from django.http import JsonResponse, Http404, HttpResponse, HttpResponseRedirect, HttpResponsePermanentRedirect
from django.urls import reverse
from django.contrib.auth.models import Group, User
from django.shortcuts import render, get_object_or_404, redirect
from django.contrib import messages
from django.contrib.auth import login, authenticate, logout, get_user_model
from django.contrib.auth.forms import AuthenticationForm
from django.contrib.sites.shortcuts import get_current_site
from django.utils.encoding import force_bytes
from django.utils.http import urlsafe_base64_encode, urlsafe_base64_decode
from django.template.loader import render_to_string
from django.contrib.auth.tokens import default_token_generator
from django.views.generic import ListView
from django.core.mail import send_mail, BadHeaderError, EmailMessage
from django.contrib.auth.decorators import login_required
from django.views.decorators.csrf import csrf_exempt 
from django.conf import settings
from django.views.generic.base import TemplateView
from django.db.models import Q
import stripe
from .decorator import *
from .forms import *
from .models import *
import json
import os
import random
import string

#IanShin -> homepage, logout_request
#ChenWei -> TutorReg, UserLogin

def homepage(request):
    return render(request=request,
                  template_name='main/Home.html')

def services(request):
	return render(request=request,
                  template_name='main/Services.html')

def about(request):
	aboutUsContext = {
		"pictureTexts": "Our Story",
		"learnText": "Learn more about us here"
	}
	pictureTexts = ["Our Story", "Learn more about us here" ]
	return render(request=request,template_name='main/AboutUs.html', context = {"aboutUsContext" : aboutUsContext})

@csrf_exempt
def stripe_config(request):
	if request.method == 'GET':
		stripe_config = {'publicKey': settings.STRIPE_PUBLISHABLE_KEY}
		return JsonResponse(stripe_config, safe=False)

@csrf_exempt
def create_checkout_session(request):
	if request.method == 'GET':
		domain_url = "http://" + str(get_current_site(request)) + "/"
		stripe.api_key = settings.STRIPE_SECRET_KEY
		try:
			# Create new Checkout Session for the order
			# Other optional params include:
			# [billing_address_collection] - to display billing address details on the page
			# [customer] - if you have an existing Stripe Customer ID
			# [payment_intent_data] - capture the payment later
			# [customer_email] - prefill the email input in the form
			# For full details see https://stripe.com/docs/api/checkout/sessions/create
			# ?session_id={CHECKOUT_SESSION_ID} means the redirect will have the session ID set as a query param
			checkout_session = stripe.checkout.Session.create(
				success_url=domain_url + 'success?session_id={CHECKOUT_SESSION_ID}',
				cancel_url=domain_url + 'cancelled/',
				payment_method_types=['card'],
				mode='payment',
				line_items=[
					{
						'name': 'test_product',
						'quantity': 1,
						'currency': 'USD',
						'amount': '5000', # in USD
					}
				]
			)
			return JsonResponse({'sessionId': checkout_session['id']})
		except Exception as e:
			return JsonResponse({'error': str(e)})

class SuccessView(TemplateView):
	template_name = 'main/success.html'
		

class CancelledView(TemplateView):
	template_name = 'main/cancelled.html'

#Admin User only
@login_required(login_url="main:Login")
@Check_Superuser
def OneTimeReg(request):
	if request.method == "POST":
		form = OneTimeRegForm(request.POST)
		if form.is_valid():
			sender = "admin@gmail.com"
			receiver = form.cleaned_data.get('email')
			# Get the current site
			current_site = get_current_site(request)
			# Create custom token
			token = ''.join(random.choices(string.ascii_uppercase + string.digits, k = 30))
			subject = 'Register for your account'
			# Message
			content = render_to_string('main/OneTimeLink.html', {
				'domain': current_site.domain,
				'token': token,
			})
			# If user already register, prevent sending register link
			if User.objects.filter(email=receiver).exists():
				messages.error(request, "Account with that email already exists")
			# If user already got the link, but said didn't receive it, this resent the link with different token
			elif OTP.objects.filter(email=receiver).exists():
				OTP.objects.filter(email=receiver).update(token=token)
				# Send Email
				sendEmail(subject, content, sender, receiver)
				messages.success(request, "Register Email Resent")
			# User will get link to register and token info store in model OTP
			else:
				OTP.objects.create(email=receiver, token=token)
				# Send Email
				sendEmail(subject, content, sender, receiver)
				messages.success(request, "Register Email Sent")
			return HttpResponseRedirect(reverse("main:OTL"))
	else:
		form = OneTimeRegForm() 
	return render(request, 'main/OneTimeReg.html', {'form': form })
	

@Check_Login
def TutorReg(request, token):
	# Check if token exist in db
	try:
		query = OTP.objects.get(token=token).token
	except(TypeError, ValueError, OverflowError, OTP.DoesNotExist):
		query = None
	# If token exist and is same with the one in the link, direct it to register form
	if query is not None and query == token:
		if request.method == 'POST':
			form = TutorForm(request.POST)
			if form.is_valid():
				user = form.save()
				messages.success(request, user.username + " Account created, Please Confirm Email")
				sender = "admin@gmail.com"
				receiver = form.cleaned_data.get('email')
				# Get the current site
				current_site = get_current_site(request)
				# Subject of the activate email
				subject = 'Activate Your Ivy Tutoring Account'
				# Message
				content = render_to_string('main/activate_email.html', {
					'user': user,
					'domain': current_site.domain,
					'uid': urlsafe_base64_encode(force_bytes(user.pk)),
					'token': default_token_generator.make_token(user),
				})
				# Send Email
				sendEmail(subject, content, sender, receiver)
				OTP.objects.filter(token=token).delete()
				return redirect("main:Login")
			else:
				errorData = form.errors.get_json_data()
				for i in errorData:
					errorMsg = errorData[i][0]['message'] 
					messages.error(request, errorMsg)
		else:
			form = TutorForm() 
		return render(request, 'main/SignUp.html', {'form': form })
	else:
		messages.error(request, "Invalid Link")
		return redirect("main:homepage")

@Check_Login
def ResendConfirmation(request):
	if request.method == 'POST':
		form = ResendConfirmationForm(request.POST)
		if form.is_valid():
			sender = "admin@gmail.com"
			receiver = form.cleaned_data['email']
			# Get the current site
			current_site = get_current_site(request)
			# Subject of the activate email
			subject = 'Activate Your Ivy Tutoring Account'
			# Get user base on the email
			try:
				user = User.objects.get(email=receiver)
			except(TypeError, ValueError, OverflowError, User.DoesNotExist):
				user = None
			if user is not None and not user.email_confirm:
				content = render_to_string('main/activate_email.html', {
					'user': user,
					'domain': current_site.domain,
					'uid': urlsafe_base64_encode(force_bytes(user.pk)),
					'token': default_token_generator.make_token(user),
				})
				# Send Email
				sendEmail(subject, content, sender, receiver)
				messages.success(request, "Email Confirmation Resent")
			else:
				messages.error(request, "Acount with the email does not exist, or is already confirmed")
	else:
		form = ResendConfirmationForm() 
	return render(request, 'main/Resend.html', {'form': form })


# When user click on the link that is sended to their email to activate 
def activate(request, uidb64, token):
	UserModel = get_user_model()
	try:
		uid = urlsafe_base64_decode(uidb64).decode()
		user = UserModel._default_manager.get(pk=uid)
	except(TypeError, ValueError, OverflowError, UserModel.DoesNotExist):
		user = None
	if user is not None and default_token_generator.check_token(user, token):
		user.email_confirm = True
		addGroup(user)
		user.save()
		messages.success(request, "Email Confirmed")
	else:
		messages.error(request, "Invalid Link")
	return redirect("main:homepage")

@Check_Login
def UserLogin(request):
	if request.method == 'POST':
		form = AuthenticationForm(request, data = request.POST)
		if form.is_valid():
			username = request.POST['username']
			password = request.POST['password']
			user = authenticate(username=username, password=password)
			if user.is_superuser or (user is not None and user.email_confirm):
				login(request,user)
				return redirect("main:Profile")
			elif user is not None and not user.email_confirm:
				messages.error(request, "Email not confirmed, <a href='/Resend'>Resend Email Confirmation</a>")
				return HttpResponseRedirect(reverse("main:Login"))
		else:
			messages.error(request, "Username or Password Incorrect")
			return HttpResponseRedirect(reverse("main:Login"))
	else:
		form = AuthenticationForm()
	return render(request, 'main/Login.html',context = {"form":form})

def logout_request(request):
	logout(request)
	return redirect("main:homepage")

def applicant(request): #consider using main_admins. Could be easier for Melissa 
	sender = "somedomain@mail.com"
	receiver = "admin@gmail.com"
	if request.method == "POST":
		form = ApplicantForm(request.POST)
		if form.is_valid():
			body = {
				"subject" : "New Applicant!",
				'First Name': form.cleaned_data['firstName'],
				'Last Name': form.cleaned_data['lastName'],
				'Email Address': form.cleaned_data['emailAddress'],
				'Message' : form.cleaned_data['message'],
			}
			content = ""
			for key, value in body.items():
				content += "\n" + key + ":\n\t" + value
			sendEmail(body["subject"], content, sender, receiver)
			messages.success(request, "Tutor Applcation Received")
			return HttpResponseRedirect(reverse("main:Applicant"))
	else:
		form = ApplicantForm()
	return render(request,"main/Applicant.html", {"form":form})
	

def ContactUs(request):
	# sender = os.getenv('SENDER_EMAILl')
	# receiver = "os.getenv('RECEIVER_EMAILl')" # Permanent Email for M to receive
	sender = "somedomain@mail.com"
	receiver = "admin@gmail.com"
	if request.method == 'POST':
		form = ContactForm(request.POST)
		# Get all the data from form
		if form.is_valid():
			body = {
				"subject" : form.cleaned_data['subject'],
				'First Name': form.cleaned_data['first_name'],
				'Last Name': form.cleaned_data['last_name'],
				# For later
				# "user_type" : form.cleaned_data['user_type'],
				'Email Address': form.cleaned_data['email'],
				'Message' : form.cleaned_data['message'],
			}
			content = ""
			for key, value in body.items():
				content += "\n" + key + ":\n\t" + value
			sendEmail(body["subject"], content, sender, receiver)
			messages.success(request, "Contact form sent, please allow 24 hours for us to reply.")
			return HttpResponseRedirect(reverse("main:contactus"))
	else:
		form = ContactForm()
	return render(request, 'main/Contact.html', {'form': form})
	

def addGroup(user):
	if Group.objects.filter(name='Tutor'):
		group = Group.objects.get(name='Tutor')
		user.groups.add(group)
	else:
		Group.objects.create(name='Tutor')
		group = Group.objects.get(name='Tutor')
		user.groups.add(group)

def sendEmail(*args):
	try: 
		send_mail(args[0], args[1], args[2], [args[3]])
	except BadHeaderError:
		return HttpResponse("Invalid Header Found")

class tutorList(ListView):
	model = User
	template_name = "main/Tutors.html"
	context_object_name = "users"
	
	def get_context_data(self,**kwargs):
		data = super().get_context_data(**kwargs)
		return data

@login_required(login_url="main:Login")
def profile(request):
	return render(request, "main/Profile.html")
	
@login_required(login_url="main:Login")
def profileEdit(request):
	form = ProfileForm(instance = request.user)
	if request.method == "POST":
		form = ProfileForm(request.POST,request.FILES,instance = request.user.profile)
		if form.is_valid():
			form.save()
			return redirect("main:Profile")
		else:
			form = ProfileForm()
	context = {'form':form}	
	return render(request,"main/EditProfile.html", context)

def Search_Results(request):
    query = request.GET.get('searchBar')
    print(query)
    if query:
        context = {}
        context["all_results"] = User.objects.filter(Q(username__icontains = query) | 
        Q(first_name__icontains = query) |
        Q(last_name__icontains = query))
        return render(request, "main/TutorSearch.html", context)