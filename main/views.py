from django.http import JsonResponse, Http404, HttpResponse
from django.contrib.auth.models import Group
from django.shortcuts import render, get_object_or_404, redirect
from django.contrib.auth import login, authenticate, logout
from django.contrib.auth.forms import AuthenticationForm
from .forms import *
import json

#IanShin -> homepage, logout_request
#ChenWei -> TutorReg, UserLogin

def homepage(request):
    return render(request=request,
                  template_name='main/Home.html')



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
	return render(request, 'main/Login.html',context = {"form":form})

def logout_request(request):
	logout(request)
	return redirect("main:homepage")
