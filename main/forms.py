from django import forms
from django.core.exceptions import ValidationError
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from .models import User,Profile, Invoice, Experience,School
from django.forms import Textarea
from django_summernote.widgets import SummernoteWidget, SummernoteInplaceWidget
from django_summernote.fields import SummernoteTextFormField
from captcha.fields import CaptchaField
from countable_field.widgets import CountableWidget
from taggit.forms import TagWidget

class TutorForm(UserCreationForm):
	captcha = CaptchaField()
	class Meta:
		model = User
		fields = ['email', 'username', 'password1', 'password2', 'first_name', 'last_name','captcha']

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
	resume = forms.FileField(required=False)
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
		fields = ['pro_pic','descript','intro','city','state','tags',"college","major"]
		widgets = {
			'tags':forms.TextInput(attrs={'data-role':'tagsinput'}),
		}
	def __init__(self, *args, **kwargs):
		super(ProfileForm, self).__init__(*args, **kwargs)
		self.fields['intro'].widget = CountableWidget(attrs={'data-max-count': 1000,
															'data-count': 'characters',
															'data-count-direction': 'down'})
		self.fields['intro'].label = False
		self.fields['city'].widget.attrs['placeholder'] = "City"
		self.fields['state'].widget.attrs['placeholder'] = "State Acronym"
		self.fields['college'].widget.attrs['placeholder'] = "College"
		self.fields['major'].widget.attrs['placeholder'] = "Major"
		self.fields['descript'].widget.attrs['placeholder'] = "Write a welcoming message!"
		self.fields['intro'].widget.attrs['placeholder'] = "Write a paragraph about yourself!"


class ExperienceForm(forms.ModelForm):
	class Meta:
		model = Experience
		fields = ['employer','position','start_year',"end_year"]
		
	def __init__(self, *args, **kwargs):
		super(ExperienceForm, self).__init__(*args, **kwargs)
		self.fields['employer'].widget.attrs['placeholder'] = 'Employer'
		self.fields['position'].widget.attrs['placeholder'] = 'Position'
		self.fields['start_year'].widget.attrs['placeholder'] = 'ex:2020'
		self.fields['end_year'].widget.attrs['placeholder'] = 'ex:2021'


class SchoolForm(forms.ModelForm):
	class Meta:
		model = School
		fields = ["college","major","c_start_year","c_end_year"]
	def __init__(self, *args, **kwargs):
		super(SchoolForm, self).__init__(*args, **kwargs)
		self.fields['college'].widget.attrs['placeholder'] = 'School'
		self.fields['major'].widget.attrs['placeholder'] = 'Area of Study'
		self.fields['c_start_year'].widget.attrs['placeholder'] = 'ex:2020'
		self.fields['c_end_year'].widget.attrs['placeholder'] = 'ex:2021'