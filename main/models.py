from django.db import models
from django.contrib.auth.models import AbstractUser
from taggit.managers import TaggableManager

class User(AbstractUser):
	email_confirm = models.BooleanField(default=False)

class Profile(models.Model):
	user = models.OneToOneField(User,on_delete = models.CASCADE,default= None)
	pro_pic =  models.ImageField(upload_to = 'profilePics', blank = True, null = True)
	descript = models.CharField(max_length = 50, blank = True)
	intro = models.CharField(max_length = 1000, blank = True)
	city = models.CharField(max_length= 100,blank = True)
	state = models.CharField(max_length = 100,blank = True)
	tags = TaggableManager(blank = True)

	def __str__(self):
		return f'{self.user.username} Profile'

class OTP(models.Model):
	email = models.EmailField(max_length=100, null=True, default=None)
	token = models.CharField(max_length = 30, null=True, default=None)

class Invoice(models.Model):
	email = models.EmailField(max_length=100)
	invoice_id = models.CharField(max_length=100, default=None)
	pay_id = models.CharField(max_length=100)
	amount = models.DecimalField(max_digits=6, decimal_places=2)
	detail = models.CharField(max_length=100)
	paid = models.BooleanField(default=False)


