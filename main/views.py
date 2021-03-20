from django.http import JsonResponse, Http404, HttpResponse
from django.contrib.auth.models import Group, User
from django.shortcuts import render, get_object_or_404, redirect
from django.contrib.auth import login, authenticate, logout
from django.contrib.auth.forms import AuthenticationForm
from .forms import *
import json
from django.views.generic import ListView
from django.core.mail import send_mail, BadHeaderError
from django.http import HttpResponse

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

def TutorReg(request):
	if request.method == 'POST':
		form = TutorForm(request.POST)
		if form.is_valid():
			user = form.save()
			if Group.objects.filter(name='Tutor'):
				group = Group.objects.get(name='Tutor')
				user.groups.add(group)
			else:
				Group.objects.create(name='Tutor')
				group = Group.objects.get(name='Tutor')
				user.groups.add(group)
		else:
			print(form.errors)
		return redirect("/")
	else:
		form = TutorForm() 
		context = {'form': form }
		return render(request, 'main/SignUp.html', context)

def UserLogin(request):
	if request.method == 'POST':
		form = AuthenticationForm(request, data = request.POST)
		if form.is_valid():
			username = request.POST['username']
			password = request.POST['password']
			user = authenticate(username=username, password=password)
			if user is not None:
				login(request,user)
				return redirect("/")
	form = AuthenticationForm()
	return render(request, 'main/Login.html',context = {"form":form} )

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

class tutorList(ListView):
	model = User
	template_name = "main/Tutors.html"
	context_object_name = "users"
	
	def get_context_data(self,**kwargs):
		data = super().get_context_data(**kwargs)
		return data