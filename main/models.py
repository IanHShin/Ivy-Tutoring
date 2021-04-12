from django.db import models
from django.contrib.auth.models import AbstractUser

class User(AbstractUser):
	email_confirm = models.BooleanField(default=False)

class Profile(models.Model):
	user = models.OneToOneField(User,on_delete = models.CASCADE,default= None)
	pro_pic =  models.ImageField(upload_to = 'profilePics', blank = True, null = True)
	descript = models.CharField(max_length = 50, blank = True)
	intro = models.CharField(max_length = 1000, blank = True)

	def __str__(self):
		return f'{self.user.username} Profile'

class OTP(models.Model):
	email = models.EmailField(max_length=100, null=True, default=None)
	token = models.CharField(max_length = 30, null=True, default=None)
