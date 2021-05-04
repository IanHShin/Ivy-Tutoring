from django.db import models
from django.contrib.auth.models import AbstractUser
from taggit.managers import TaggableManager
from PIL import Image

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
	college = models.CharField(max_length=100, null=True, blank=True)
	major= models.CharField(max_length=100, null=True, blank=True)

	def save(self,*args,**kwargs):
		super(Profile, self).save(*args,**kwargs)
		if self.pro_pic:
			image = Image.open(self.pro_pic)
			reform_size = (1024,1024)
			image = image.resize(reform_size,Image.ANTIALIAS)
			image.save(self.pro_pic.path)
    
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

class Experience(models.Model):
	user = models.ForeignKey(User,null= True,on_delete = models.SET_NULL)
	employer = models.CharField(max_length=50, default= None, null = True)
	position = models.CharField(max_length = 50,default = None, null = True)
	start_year = models.SmallIntegerField(blank=True, null=True) 
	end_year = models.CharField(max_length = 4,blank=True,null = True)


class School(models.Model):
	user = models.ForeignKey(User,null= True,on_delete = models.SET_NULL)
	college = models.CharField(max_length=50, default= None, null = True)
	major = models.CharField(max_length = 50,default = None, null = True)
	c_start_year = models.SmallIntegerField(blank=True, null=True) 
	c_end_year = models.CharField(max_length = 4,blank=True,null = True)

