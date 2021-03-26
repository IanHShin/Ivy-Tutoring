from django.db import models
from django.contrib.auth.models import AbstractUser


# Create your models here.
class User(AbstractUser):
    date_birth = models.DateField(null=True)
    user_type = models.IntegerField(null=True)
    email_confirm = models.BooleanField(default=False)

class Profile(models.Model):
    user = models.OneToOneField(User,on_delete = models.CASCADE,default= None)
    pro_pic =  models.ImageField(upload_to = 'profilePics', default = 'Default.jpg', blank = True, null = True)
    descript = models.CharField(max_length = 50, blank = True)
    intro = models.CharField(max_length = 1000, blank = True)

            

    def __str__(self):
        return f'{self.user.username} Profile'
