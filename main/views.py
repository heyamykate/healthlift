# -*- coding: utf-8 -*-
from __future__ import unicode_literals
import json
import datetime

from django.shortcuts import render
from django.http import HttpResponse

from main.models import Homepage, Employee, Company, Contact

def landing(request):
    template = "pages/landing.html"
    page = Homepage.objects.first()
    employees = Employee.objects.all()
    companies = Company.objects.all()

    context = {
        'page': page,
        'employees': employees,
        'companies': companies
    }
    return render(request, template, context)

def contact(request):
    if request.method == "POST":
        data = json.loads(request.body)
        name = data['name']
        email = data['email']
        message = data['message']
        date_of_contact = datetime.datetime.now()

        contact = Contact(name=name, email=email, message=message, date_of_contact=date_of_contact)

        try:
            contact.save()
            return HttpResponse("Success!", status=200)
        except Exception:
            print('error')
            return HttpResponse("Error!", status=400)

    #return HttpResponse("Success!", status=200)
