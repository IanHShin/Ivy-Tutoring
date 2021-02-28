from django.utils import timezone
from django import forms
from django.contrib.auth.hashers import make_password
from django.core.exceptions import ValidationError
from django.contrib.auth.forms import UserCreationForm
from .models import User

class TutorForm(UserCreationForm):
	date_birth = forms.DateField(label='Date Of Birth', widget = forms.SelectDateWidget(years=range(1900, (int(timezone.localtime().year)))))

	class Meta:
		model = User
		fields = ['email', 'username', 'password1', 'password2', 'first_name', 'last_name', 'date_birth']

	def save(self, commit=True):
		tutor = super(TutorForm, self).save(commit=False)
		tutor.user_type = 1
		if commit:
			tutor.save()
		return tutor