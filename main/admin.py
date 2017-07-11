# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.contrib import admin
from adminsortable2.admin import SortableAdminMixin
from main.models import Homepage, Employee, Company, Contact

class HomeAdmin(admin.ModelAdmin):
    model = Homepage

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

admin.site.register(Contact, ContactAdmin)
