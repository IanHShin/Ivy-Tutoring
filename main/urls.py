from django.urls import path
from . import views
from django.contrib.staticfiles.urls import static, staticfiles_urlpatterns
from django.conf import settings
from django.views.decorators.csrf import csrf_exempt
from .views import tutorList
from django.contrib.auth import views as auth_views
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
	path("Profile/<str:username>/",views.profile,name = "profile"),
	path("Profile/<str:username>/EditProfile", views.profileEdit, name = "EditProfile"),
	path("CheckOut/", views.create_checkout_session, name = "CheckOut"),
	path('config/', stripe_config),
	path('create-checkout-session/', create_checkout_session),
	path('success/', SuccessView.as_view()),  # new
	path('cancelled/', CancelledView.as_view()),
	#path("Search_Results/", views.Search_Results,name = "SearchResults"),
	path("Resend/", views.ResendConfirmation, name='ResendConfirmation'),
	path("Profile/<str:username>/EditProfile/EditSkills/", views.EditSkills, name = "SkillEdit"),
	path("ForgotUsername/", views.SendUsername, name='SendUsername'),
	path("TagResults/", views.tag,name = "TagResults"),
	path("Search_Results/",csrf_exempt(views.Search_Results),name = "Search_Results"),
	path("CreateInvoice/", views.CreateInvoice, name='CreateInvoice'),
	path("Payment/", views.Payment, name='Payment'),
	path('PaypalCheckout/<invoice_id>/', views.PaypalCheckout, name='PaypalCheckout'),
	path('PaypalSuccess/', views.PaypalSuccessView.as_view(), name='PaypalSuccess'),
	path('password_change/', views.ChangePassword, name='password_change'),
	path('password_reset/',auth_views.PasswordResetView.as_view(template_name="main/password_reset.html"),name="reset_password"),
	path('password_reset/done/', auth_views.PasswordResetDoneView.as_view(template_name="main/password_reset_sent.html"), name="password_reset_done"),
	path('reset/<uidb64>/<token>/',auth_views.PasswordResetConfirmView.as_view(template_name="main/password_reset_form.html"), name="password_reset_confirm"),
	path('reset/done/', auth_views.PasswordResetCompleteView.as_view(template_name="main/password_reset_done.html"), name="password_reset_complete"),
	path('PaymentDetailEndpoint/', views.PaymentDetailEndpoint, name='PaymentDetailEndpoint'),
	path("Profile/<str:username>/EditProfile/JobEdit/", views.editJob, name = "JobEdit"),
	path("UpdateJob/<str:pk>/", views.updateJob, name= "UpdateJob"),
	path("DeleteJob/<str:pk>/", views.deleteJob, name = "DeleteJob"),
	path("Profile/<str:username>/EditProfile/EditSchool/", views.editSchool, name = "EditSchool"),
	path("UpdateEd/<str:pk>/", views.updateSchool, name= "UpdateEd"),
	path("DeleteEd/<str:pk>/", views.deleteSchool, name= "DeleteEd"),
	
]
if settings.DEBUG:
	urlpatterns += static(settings.MEDIA_URL,
							document_root=settings.MEDIA_ROOT)