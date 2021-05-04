# Generated by Django 3.1.6 on 2021-04-25 23:45

from django.db import migrations
import taggit.managers


class Migration(migrations.Migration):

    dependencies = [
        ('taggit', '0003_taggeditem_add_unique_index'),
        ('main', '0008_auto_20210425_1818'),
    ]

    operations = [
        migrations.AlterField(
            model_name='profile',
            name='tags',
            field=taggit.managers.TaggableManager(help_text='A comma-separated list of tags.', through='taggit.TaggedItem', to='taggit.Tag', verbose_name='Tags'),
        ),
    ]
