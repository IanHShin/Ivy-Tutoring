from django.http import JsonResponse, Http404, HttpResponse
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
import stripe
from .decorator import *
from .forms import *
from .models import *
import json
import os
import random
import string
User = get_user_model()

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
		# domain_url = 'http://localhost:8000/'
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
						'price': 'price_1IfwLAJAbZRgc8MgVyp9ZahB',
                        'quantity': 1,

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

#Admin User only, decorator to check that required
@login_required(login_url="main:Login")
@Check_Superuser
def OneTimeReg(request):
	if request.method == "POST":
		form = OneTimeRegForm(request.POST)
		if form.is_valid():
			sender = "admin@gmail.com"
			receiver = form.cleaned_data.get('email')
			if User.objects.filter(email=receiver).exists():
				messages.error(request, "Account with that email already exists")
			else:
				# Get the current site
				current_site = get_current_site(request)
				# Create custom token
				token = ''.join(random.choices(string.ascii_uppercase + string.digits, k = 30))
				OTP.objects.create(token=token)
				# Subject of the activate email
				subject = 'Register for your account'
				# Message
				message = render_to_string('main/OneTimeLink.html', {
					'domain': current_site.domain,
					'token': token,
				})
				# Send Email
				email = EmailMessage(subject, message, from_email=sender, to=[receiver])
				email.send()
	else:
		form = OneTimeRegForm() 
		context = {'form': form }
		return render(request, 'main/OneTimeReg.html', context)
	return redirect("main:OTL")

@Check_Login
def TutorReg(request, token):
	# Check if token exist in db
	try:
		query = OTP.objects.get(token=token).token
	except(TypeError, ValueError, OverflowError, OTP.DoesNotExist):
		query = None
	# If token exist and is same, show register form
	if query is not None and query == token:
		if request.method == 'POST':
			form = TutorForm(request.POST)
			if form.is_valid():
				user = form.save()
				messages.success(request, user.username + " Account created, " + " Email confirmation has been sent to your email, " + "Please Confirm Email")
				sender = "admin@gmail.com"
				receiver = form.cleaned_data.get('email')
				# Get the current site
				current_site = get_current_site(request)
				# Subject of the activate email
				subject = 'Activate Your Ivy Tutoring Account'
				# Message
				message = render_to_string('main/activate_email.html', {
					'user': user,
					'domain': current_site.domain,
					'uid': urlsafe_base64_encode(force_bytes(user.pk)),
					'token': default_token_generator.make_token(user),
				})
				# Send Email
				email = EmailMessage(subject, message, from_email=sender, to=[receiver])
				email.send()
				OTP.objects.filter(token=token).delete()
				return redirect("main:Login")
			else:
				errorData = form.errors.get_json_data()
				for i in errorData:
					errorMsg = errorData[i][0]['message'] 
					messages.error(request, errorMsg)
		form = TutorForm() 
		context = {'form': form }
		return render(request, 'main/SignUp.html', context)
	else:
		return HttpResponse("Invalid Link")
		

# When user click on the link that is sended to their email to activate 
def activate(request, uidb64, token):
	UserModel = get_user_model()
	try:
		uid = urlsafe_base64_decode(uidb64).decode()
		user = UserModel._default_manager.get(pk=uid)
	except(TypeError, ValueError, OverflowError, UserModel.DoesNotExist):
		user = None
	if user is not None and default_token_generator.check_token(user, token):
		user.is_active = True
		user.email_confirm = True
		addGroup(user)
		user.save()
		messages.success(request, "Email Confirmed")
		return redirect("main:homepage")
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
			if user is not None:
				login(request,user)
				return redirect("main:homepage")
		else:
			messages.error(request, "Username or Password Incorrect")
			return redirect("main:Login")
	form = AuthenticationForm()
	return render(request, 'main/Login.html',context = {"form":form})

def logout_request(request):
	logout(request)
	return redirect("main:homepage")

def applicant(request): #consider using main_admins. Could be easier for Melissa 
	if request.method == "POST":
		form = ApplicantForm(request.POST)
		if form.is_valid():
			subject = "New Applicant!"
			body = {
				'firstName': form.cleaned_data['firstName'],
				'lastName': form.cleaned_data['lastName'],
				'emailAddress': form.cleaned_data['emailAddress'],
				'message':form.cleaned_data['message'],
			}
			message = "\n".join(body.values())
			try: 
				send_mail(subject,message, "admin@example.com",['admin@example.com']) #We will only use this during development. CLI for confirmation
			except BadHeaderError: #Prevents header injection
				return HttpResponse("Invalid Header Found")
			return redirect("main:homepage")
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
			subject = form.cleaned_data.get('subject')
			first_name = form.cleaned_data.get('first_name')
			last_name = form.cleaned_data.get('last_name')
			# For later
			# user_type = form.cleaned_data.get('user_type')
			email = form.cleaned_data.get('email')
			message = form.cleaned_data.get('message')
			content = f"First Name: {first_name}\nLast Name: {last_name}\nEmail: {email}\nMessage: {message}"
			try: 
				send_mail(subject,  content, sender, [receiver]) #We will only use this during development. CLI for confirmation
			except BadHeaderError: #Prevents header injection
				return HttpResponse("Invalid Header Found")
			return redirect("main:homepage")
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