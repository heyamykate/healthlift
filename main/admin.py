# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.contrib import admin
from adminsortable2.admin import SortableAdminMixin
from main.models import Homepage, Employee, Company, Contact

class HomeAdmin(admin.ModelAdmin):
    model = Homepage
    fieldsets = (
        (None, {
            'fields': ('hero_bg',)
        }),
        ('About', {
            'fields': ('about_title', 'about_image', 'about_copy',)
        }),
        ('Mission', {
            'fields': ('mission_title', 'mission_copy', 'pullquote', 'quote_source',)
        }),
        ('Section Titles', {
            'fields': ('companies_title', 'team_title',)
        }),
        ('Spacer Images', {
            'fields': ('spacer_image_1', 'spacer_image_2', 'spacer_image_3', 'spacer_image_4',)
        })
    )

admin.site.register(Homepage, HomeAdmin)

class EmployeeAdmin(SortableAdminMixin, admin.ModelAdmin):
    model = Employee

admin.site.register(Employee, EmployeeAdmin)

class CompanyAdmin(SortableAdminMixin, admin.ModelAdmin):
    model = Company

admin.site.register(Company, CompanyAdmin)

class ContactAdmin(admin.ModelAdmin):
    model = Contact
    list_display = ('name', 'email', 'date_of_contact', 'contacted')
    list_filter = ('contacted', 'date_of_contact')
    search_fields = ['name', 'email']

admin.site.register(Contact, ContactAdmin)
