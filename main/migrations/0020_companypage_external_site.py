# -*- coding: utf-8 -*-
# Generated by Django 1.11.2 on 2018-07-05 22:58
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0019_auto_20180705_1436'),
    ]

    operations = [
        migrations.AddField(
            model_name='companypage',
            name='external_site',
            field=models.CharField(blank=True, max_length=150, null=True, verbose_name='Site URL (optional)'),
        ),
    ]
