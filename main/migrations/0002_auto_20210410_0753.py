# Generated by Django 3.1.6 on 2021-04-10 14:53

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='otp',
            name='token',
            field=models.CharField(default=None, max_length=30, null=True),
        ),
    ]
