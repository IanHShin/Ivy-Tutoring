from django.http import HttpResponse
from django.shortcuts import redirect

# If the user has login, the user will be redirected to the homepage if they try to access login page or registration page by altering the url.
def Check_Login(func):
	def wrapper(request, *args, **kwargs):
		if request.user.is_authenticated:
			return redirect("main:homepage")
		else:
			return func(request, *args, **kwargs)
	return wrapper


# def TBD(func):
# 	def wrapper(request, *args, **kwargs):
# 		return redirect("main:homepage")
# 	return wrapper