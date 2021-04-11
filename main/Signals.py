from django.db.models.signals import post_save
from django.dispatch import receiver 
from .models import Profile
from django.contrib.auth import get_user_model

User = get_user_model()
#when a user is saved, send this signal, and the receiver (def create_profile), and will create a profile object. 
@receiver(post_save, sender = User)
def create_profile(sender,instance,created,**kwargs):
	if created:
		Profile.objects.create(user = instance)
		print("Profile Create")

@receiver(post_save, sender=User)
def save_user_profile(sender, instance, **kwargs):
	instance.profile.save()
	print("Profile saved")