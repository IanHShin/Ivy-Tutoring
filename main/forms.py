from django.utils import timezone
from django import forms
from django.contrib.auth.hashers import make_password
from django.core.exceptions import ValidationError
from django.contrib.auth.forms import UserCreationForm
from .models import User,Profile
from django.forms import Textarea
from django_summernote.widgets import SummernoteWidget, SummernoteInplaceWidget
from django_summernote.fields import SummernoteTextFormField

class TutorForm(UserCreationForm):
	# date_birth = forms.DateField(label='Date Of Birth', widget = forms.SelectDateWidget(years=range(1900, (int(timezone.localtime().year)))))

	class Meta:
		model = User
		fields = ['email', 'username', 'password1', 'password2', 'first_name', 'last_name']

	def save(self, commit=True):
		tutor = super(TutorForm, self).save(commit=False)
		# tutor.user_type = 1
		tutor.is_active = False
		if commit:
			tutor.save()
		return tutor

class ApplicantForm(forms.Form):
	firstName = forms.CharField(label = "First Name", max_length=30)
	lastName = forms.CharField(label = "Last Name", max_length = 30)
	emailAddress = forms.EmailField(label = "Email Address", max_length = 100)
	message = forms.CharField(widget=forms.Textarea(attrs={"rows":10,"cols":20}),max_length = 500)

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

class ProfileForm(forms.ModelForm):
	class Meta:
		model = Profile
		fields = ['pro_pic','descript','intro']
		widgets = {
            'intro': SummernoteWidget(),
           
        }

