from django.contrib.auth import get_user_model
from django.http import JsonResponse, Http404, HttpResponse
from django.contrib.auth.models import User, Group
from django.shortcuts import render, get_object_or_404, redirect
from django.contrib.sites.shortcuts import get_current_site
from django.contrib.auth import login, authenticate, logout
from django.core.mail import send_mail
from django.utils.encoding import force_bytes
from django.utils.http import urlsafe_base64_encode, urlsafe_base64_decode
from django.template.loader import render_to_string
from django.contrib.auth.tokens import default_token_generator
from django.core.mail import EmailMessage
from .forms import ParentForm, contactForm
import json
import os
from django.views.decorators.csrf import csrf_exempt # new
from django.conf import settings # new
from django.views.generic.base import TemplateView
from django.http.response import JsonResponse # new
import stripe


def HomePage(request):
	return render(request, 'main/home.html')

@csrf_exempt
def stripe_config(request):
	if request.method == 'GET':
		stripe_config = {'publicKey': settings.STRIPE_PUBLISHABLE_KEY}
		return JsonResponse(stripe_config, safe=False)
from django.contrib.auth import get_user_model
from django.views.generic import ListView
from django.core.mail import send_mail, BadHeaderError, EmailMessage
from django.contrib.auth.decorators import login_required
from .decorator import *
from .forms import *
from .models import *
import json
import os
from django.contrib.auth import get_user_model
User = get_user_model()

@csrf_exempt
def create_checkout_session(request):
    if request.method == 'GET':
        domain_url = 'http://localhost:8000/'
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

def addGroup(user):
	if Group.objects.filter(name='Parent'):
		group = Group.objects.get(name='Parent')
		user.groups.add(group)
	else:
		Group.objects.create(name='Parent')
		group = Group.objects.get(name='Parent')
		user.groups.add(group)

def ContactUs(request):
	sender = os.getenv('SENDER_EMAIL')
	receiver = os.getenv('RECEIVER_EMAIL') # Permanent Email for M to receive
def about(request):
	aboutUsContext = {
		"pictureTexts": "Our Story",
		"learnText": "Learn more about us here"
	}
	pictureTexts = ["Our Story", "Learn more about us here" ]
	return render(request=request,template_name='main/AboutUs.html', context = {"aboutUsContext" : aboutUsContext})
@Check_Login
def TutorReg(request):
	if request.method == 'POST':
		form = contactForm(request.POST)
		if form.is_valid():
			subject = form.cleaned_data.get('subject')
			first_name = form.cleaned_data.get('first_name')
			last_name = form.cleaned_data.get('last_name')
			user_type = form.cleaned_data.get('user_type')
			email = form.cleaned_data.get('email')
			message = form.cleaned_data.get('message')
			content = f"First Name: {first_name}\nLast Name: {last_name}\nEmail: {email}\nUser: {user_type}\nMessage: {message}"
			email = EmailMessage(subject, content, from_email=sender, to=[receiver])
			email.send()
			return HttpResponse('Form Sent')
	else:
		form = contactForm()
		return render(request, 'main/contact.html', {'form': form})

def ParentReg(request):
	if request.method == 'POST':
		form = ParentForm(request.POST)
		if form.is_valid():
			user = form.save()
			sender = os.getenv('SENDER_EMAIL')
			receiver = form.cleaned_data.get('email')
			current_site = get_current_site(request)
			subject = 'Activate Your Ivy Tutoring Account'
			message = render_to_string('main/activate_email.html', {
				'user': user,
				'domain': current_site.domain,
				'uid': urlsafe_base64_encode(force_bytes(user.pk)),
				'token': default_token_generator.make_token(user),
			})
			email = EmailMessage(subject, message, from_email=sender, to=[receiver])
			email.send()
		else:
			print(form.errors)
		return redirect('/login')
	else:
		form = ParentForm() 
		return render(request, 'main/signup.html', {'form': form })

def activate(request, uidb64, token):
	UserModel = get_user_model()
	try:
		uid = urlsafe_base64_decode(uidb64).decode()
		user = UserModel._default_manager.get(pk=uid)
	except(TypeError, ValueError, OverflowError, User.DoesNotExist):
		user = None
	if user is not None and default_token_generator.check_token(user, token):
		user.is_active = True
		user.email_confirm = True
		addGroup(user)
		user.save()
		return HttpResponse('Thank you for your email confirmation. Now you can login your account.')
	else:
		return HttpResponse('Activation link is invalid!')

@Check_Login
def UserLogin(request):
	if request.method == 'POST':
		username = request.POST['username']
		password = request.POST['password']
		user = authenticate(username=username, password=password)
		if user is not None:
			if user.user_type == 1:
				login(request, user)
				return render(request, 'main/parent.html')
			# elif user.user_type == 2:
			# 	login(request, user)
			# 	return render(request, 'main/student.html')
			# elif user.user_type == 3:
			# 	login(request, user)
			# 	return render(request, 'main/tutor.html')
		else:
			return render(request, 'main/login.html')
		form = AuthenticationForm(request, data = request.POST)
		if form.is_valid():
			username = request.POST['username']
			password = request.POST['password']
			user = authenticate(username=username, password=password)
			if user is not None:
				login(request,user)
				return redirect("/")
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
		return render(request, 'main/login.html')

def UserLogout(request):
    logout(request)
    return redirect('/login')

# def StudentReg(request):
# 	if request.method == 'POST':
# 		form = StudentForm(request.POST)
# 		if form.is_valid():
# 			user = form.save()
# 			if Group.objects.filter(name='Student'):
# 				group = Group.objects.get(name='Student')
# 				user.groups.add(group)
# 			else:
# 				Group.objects.create(name='Student')
# 				group = Group.objects.get(name='Student')
# 				user.groups.add(group)
# 		else:
# 			print(form.errors)
# 		return HttpResponse("Registered")
# 	else:
# 		form = StudentForm() 
# 		return render(request, 'main/signup.html', {'form': form })

# def TutorReg(request):
# 	if request.method == 'POST':
# 		form = TutorForm(request.POST)
# 		if form.is_valid():
# 			user = form.save()
# 			if Group.objects.filter(name='Tutor'):
# 				group = Group.objects.get(name='Tutor')
# 				user.groups.add(group)
# 			else:
# 				Group.objects.create(name='Tutor')
# 				group = Group.objects.get(name='Tutor')
# 				user.groups.add(group)
# 		else:
# 			print(form.errors)
# 		return HttpResponse("Registered")
# 	else:
# 		form = TutorForm() 
# 		return render(request, 'main/signup.html', {'form': form })

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
