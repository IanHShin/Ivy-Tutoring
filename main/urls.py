from django.urls import path
from . import views
from django.contrib.staticfiles.urls import static
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from django.conf import settings
from .views import tutorList

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
    

]
if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL,
                          document_root=settings.MEDIA_ROOT)