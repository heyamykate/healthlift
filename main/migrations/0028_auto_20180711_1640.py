# -*- coding: utf-8 -*-
# Generated by Django 1.11.2 on 2018-07-11 22:40
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0027_auto_20180711_1628'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='company',
            name='detail_page',
        ),
        migrations.AddField(
            model_name='company',
            name='company_page',
            field=models.OneToOneField(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='main.CompanyPage'),
        ),
    ]
