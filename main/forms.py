from django import forms
from django.core.exceptions import ValidationError
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from .models import User,Profile, Invoice
from django.forms import Textarea
from django_summernote.widgets import SummernoteWidget, SummernoteInplaceWidget
from django_summernote.fields import SummernoteTextFormField
from captcha.fields import CaptchaField
from taggit.forms import TagWidget

class TutorForm(UserCreationForm):
	captcha = CaptchaField()
	class Meta:
		model = User
		fields = ['email', 'username', 'password1', 'password2', 'first_name', 'last_name', 'captcha']

	def clean(self):
		email = self.cleaned_data.get('email')
		username = self.cleaned_data.get('username')
		if User.objects.filter(email=email).exists():
			raise ValidationError("account with that email already exists, reset password if needed.")
		if User.objects.filter(username=username).exists():
			raise ValidationError("account with that username already exists, reset password if needed.")
		return self.cleaned_data

class LoginForm(AuthenticationForm):
	def __init__(self, *args, **kwargs):
		super(LoginForm, self).__init__(*args, **kwargs)
	captcha = CaptchaField()

class ApplicantForm(forms.Form):
	firstName = forms.CharField(label = "First Name", max_length=30)
	lastName = forms.CharField(label = "Last Name", max_length = 30)
	emailAddress = forms.EmailField(label = "Email Address", max_length = 100)
	message = forms.CharField(widget=forms.Textarea(attrs={"rows":10,"cols":20}),max_length = 500)
	resume = forms.FileField()
	captcha = CaptchaField()

class ContactForm(forms.Form):
	# For later
	# user_choices = [
	# ('',''),
	# ('parent', 'Parent'),
	# ('student', 'Student'),
	# ('tutor', 'Tutor')
	# ]
	first_name = forms.CharField(label='First Name', max_length=100)
	last_name = forms.CharField(label='Last Name', max_length=100)
	email = forms.EmailField(label='Email')
	# For later
	# user_type = forms.CharField(label='Are You: ', widget=forms.Select(choices=user_choices))
	subject = forms.CharField(label='Subject')
	message = forms.CharField(label='Message', widget=forms.Textarea(attrs={"rows":10,"cols":20}),max_length = 500)
	captcha = CaptchaField()

class OneTimeRegForm(forms.Form):
	email = forms.EmailField(label="Email")

class ResendConfirmationForm(forms.Form):
	email = forms.EmailField(label='Email')

class ResendUsernameForm(forms.Form):
	email = forms.EmailField(label='Email')

class InvoiceForm(forms.ModelForm):
	class Meta:
		model = Invoice
		fields = ['email', 'amount', 'detail']
		widgets = {
			'detail' : forms.Textarea(attrs={'placeholder': 'Detail such as student name and hours of service'}),
		}

class PaymentForm(forms.Form):
	invoice_id = forms.CharField(label="Invoice ID")


class ProfileForm(forms.ModelForm):	
	
	class Meta:
		model = Profile
		fields = ['pro_pic','descript','intro','city','state','tags']
		widgets = {
			'intro': SummernoteWidget(),
			'tags':forms.TextInput(attrs={'data-role':'tagsinput'}),
		}
