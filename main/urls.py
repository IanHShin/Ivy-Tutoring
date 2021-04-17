from django.urls import path
from . import views
from django.contrib.staticfiles.urls import static, staticfiles_urlpatterns
from django.conf import settings
from .views import tutorList
from main.views import *

app_name = 'main'

urlpatterns = [
	path("", views.homepage, name="homepage"),
	path("Services", views.services, name="Services"),
	path("OTL/", views.OneTimeReg, name="OTL"),
	path("signup/tutor/<token>/", views.TutorReg, name = "TutorReg"),
	path("login/", views.UserLogin, name = "Login"),
	path("logout/", views.logout_request, name = "Logout"),
	path("Applicant", views.applicant, name = "Applicant"),
	path("Tutor", tutorList.as_view(), name = "Tutor"),
	path('Contact/', views.ContactUs, name='contactus'),
	path('activate/<uidb64>/<token>/', views.activate, name='activate'),
	path("AboutUs", views.about, name="AboutUs"),
	path("Profile",views.profile,name = "Profile"),
	path("EditProfile", views.profileEdit, name = "EditProfile"),
	path("CheckOut/", views.create_checkout_session, name = "CheckOut"),
	path('config/', stripe_config),
	path('create-checkout-session/', create_checkout_session),
	path('success/', SuccessView.as_view()),  # new
	path('cancelled/', CancelledView.as_view()),
	path("Search_Results/", views.Search_Results,name = "SearchResults"),
	path("Resend/", views.ResendConfirmation, name='ResendConfirmation'),


]
if settings.DEBUG:
	urlpatterns += static(settings.MEDIA_URL,
							document_root=settings.MEDIA_ROOT)