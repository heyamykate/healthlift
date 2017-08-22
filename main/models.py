# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.db import models
from ckeditor.fields import RichTextField

class Homepage(models.Model):
    """
    Model to allow customization of homepage
    """
    hero_bg = models.ImageField(upload_to="homepage/",
                                blank=True,
                                verbose_name="Hero BG Image")

    # about section #
    about_title = models.CharField(max_length=200,
                                   blank=True,
                                   verbose_name="About Section Title")
    about_copy = RichTextField(verbose_name="About Section Copy",
                               blank=True, null=True)
    about_image = models.ImageField(upload_to="homepage/",
                                    blank=True, null=True,
                                    verbose_name="About Image")

    # mission section #
    mission_title = models.CharField(max_length=180, blank=True, null=True, verbose_name="Mission Section Title")
    pullquote = models.TextField(blank=True, null=True, verbose_name="Pull Quote (optional)")
    quote_source = models.CharField(max_length=150, null=True, blank=True, verbose_name="Quote Source")
    mission_copy = RichTextField(verbose_name="Mission Section Copy",
                               blank=True, null=True)

    # spacer images #
    spacer_image_1 = models.ImageField(upload_to="homepage/",
                                       blank=True, null=True,
                                       verbose_name="Spacer Image #1")
    spacer_image_2 = models.ImageField(upload_to="homepage/",
                                       blank=True, null=True,
                                       verbose_name="Spacer Image #2")
    spacer_image_3 = models.ImageField(upload_to="homepage/",
                                       blank=True, null=True,
                                       verbose_name="Spacer Image #3")
    spacer_image_4 = models.ImageField(upload_to="homepage/",
                                       blank=True, null=True,
                                       verbose_name="Spacer Image #4")
    companies_title = models.CharField(max_length=150, null=True, blank=True, verbose_name="Companies Section Title", default="Our Companies")
    team_title = models.CharField(max_length=150, null=True, blank=True, verbose_name="Team Section Title", default="Our Team")

    def __unicode__(self):
        return "HomePage"


    class Meta:
        verbose_name = "Home Page"
        verbose_name_plural = "Home Pages"


class Employee(models.Model):
    name = models.CharField(max_length=150,
                            blank=True)
    title = models.CharField(max_length=150,
                             blank=True)
    bio = RichTextField(max_length=350,
                           blank=True,
                           help_text="Brief bio of employee.")
    headshot = models.ImageField(upload_to="employees/",
                                 blank=True,
                                 help_text="High res if possible.")
    my_order = models.PositiveIntegerField(default=0, blank=False, null=False)
    def __unicode__(self):
        return "Employee - {0}".format(self.name)

    class Meta:
        ordering = ('my_order',)
        verbose_name = "Employee"
        verbose_name_plural = "Employees"

class Company(models.Model):
    name = models.CharField(max_length=150,
                            blank=True)
    logo = models.ImageField(upload_to="companies/",
                             blank=True,
                             help_text="Preferably a transparent PNG.")
    info = models.TextField(max_length=350,
                            blank=True,
                            help_text="Brief description of company.")
    link = models.CharField(max_length=150,
                            blank=True,
                            help_text="Optional link to company's site.")
    my_order = models.PositiveIntegerField(default=0, blank=False, null=False)

    def __unicode__(self):
        return self.name

    class Meta:
        ordering = ('my_order', )
        verbose_name = "Company"
        verbose_name_plural = "Companies"

class Contact(models.Model):
    name = models.CharField(max_length=200,
                            blank=True)
    email = models.CharField(max_length=200,
                             blank=True)
    message = models.TextField(blank=True)
    date_of_contact = models.DateTimeField(auto_now=True,
                                           blank=True,
                                           verbose_name="Date of Initial Contact")
    contacted = models.BooleanField(default=False,
                                    verbose_name="Contacted?")

    def __unicode__(self):
        return "Contact Request - {0}".format(self.name)

    class Meta:
        ordering = ('-date_of_contact', )
        verbose_name = "Contact Request"
        verbose_name_plural = "Contact Requests"
