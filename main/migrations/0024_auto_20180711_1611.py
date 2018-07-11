# -*- coding: utf-8 -*-
# Generated by Django 1.11.2 on 2018-07-11 22:11
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0023_auto_20180711_1604'),
    ]

    operations = [
        migrations.AlterField(
            model_name='homepage',
            name='companies',
            field=models.ManyToManyField(blank=True, help_text='Select the companies you want to show on the homepage.', null=True, to='main.Company', verbose_name='Company selector'),
        ),
    ]
