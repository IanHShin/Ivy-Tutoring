# Generated by Django 3.1.6 on 2021-04-10 22:06

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0002_auto_20210410_0753'),
    ]

    operations = [
        migrations.AddField(
            model_name='otp',
            name='email',
            field=models.EmailField(default=None, max_length=100, null=True),
        ),
    ]