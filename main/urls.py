from django.urls import path
from main.views import *

urlpatterns = [
	path("", views.homepage, name="homepage"),
	path("Services", views.services, name="Services"),
	path("signup/tutor", views.TutorReg, name = "TutorReg"),
	path("login/", views.UserLogin, name = "Login"),
	path("logout/", views.logout_request, name = "Logout"),
	path("Applicant", views.applicant, name = "Applicant"),
	path("Tutor", tutorList.as_view(), name = "Tutor"),
	path('Contact/', views.ContactUs, name='contactus'),
	path('activate/<uidb64>/<token>/', views.activate, name='activate'),
	path("AboutUs", views.about, name="AboutUs"),
	path("Profile",views.profile,name = "Profile"),
    path("EditProfile", views.profileEdit, name = "EditProfile"),
    

]
if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL,
                          document_root=settings.MEDIA_ROOT)
