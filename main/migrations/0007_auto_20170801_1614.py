# -*- coding: utf-8 -*-
# Generated by Django 1.11.2 on 2017-08-01 22:14
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0006_auto_20170801_1352'),
    ]

    operations = [
        migrations.AddField(
            model_name='homepage',
            name='pullquote',
            field=models.TextField(blank=True, null=True, verbose_name='Pull Quote (optional)'),
        ),
        migrations.AddField(
            model_name='homepage',
            name='quote_source',
            field=models.CharField(blank=True, max_length=150, null=True, verbose_name='Quote Source'),
        ),
    ]
