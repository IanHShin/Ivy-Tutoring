from django.contrib import admin
from .models import User, Profile, OTP, Invoice,Experience,School
# Register your models here.
admin.site.register(User)
admin.site.register(Profile)
admin.site.register(OTP)
admin.site.register(Invoice)
admin.site.register(Experience)

admin.site.register(School)