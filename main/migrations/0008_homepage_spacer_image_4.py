# -*- coding: utf-8 -*-
# Generated by Django 1.11.2 on 2017-08-01 22:22
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0007_auto_20170801_1614'),
    ]

    operations = [
        migrations.AddField(
            model_name='homepage',
            name='spacer_image_4',
            field=models.ImageField(blank=True, null=True, upload_to='homepage/', verbose_name='Spacer Image #4'),
        ),
    ]
