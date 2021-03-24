from django.urls import path
from main.views import *

urlpatterns = [
	path('', HomePage, name='Home Page'),
	path('signup/parent', ParentReg, name='Parent Registration'),
	# path('signup/student', StudentReg, name='Student Registration'),
	# path('signup/tutor', TutorReg, name='Tutor Registration'),
	path('login/', UserLogin, name='Login'),
	path('logout/', UserLogout, name='logout'),
	path('contact/', ContactUs, name='contactus'),
	path('activate/<uidb64>/<token>/',activate, name='activate'),
	path('config/', stripe_config),
	path('create-checkout-session/', create_checkout_session),
	path('success/', SuccessView.as_view()),  # new
	path('cancelled/', CancelledView.as_view()),
]