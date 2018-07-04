# -*- coding: utf-8 -*-
from __future__ import unicode_literals
import json
import datetime

from django.shortcuts import render, get_object_or_404
from django.http import HttpResponse
from django.core.mail import send_mail

from main.models import Homepage, Employee, Company, Contact, CompanyPage

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

def company_detail(request, slug):
    template = "pages/company.html"
    page = get_object_or_404(CompanyPage, slug=slug)

    return render(request, template, {'page':page})

def send_contact_email(contact):
    email_message = 'A new contact request has been received from {0}. Check the Health Lift Admin at health-lift.com/admin for more information.'.format(contact.name)
    to_email = 'contact@health-lift.com'
    from_email = 'contact@health-lift.com'
    print(email_message)
    send_mail('Contact Request', email_message, from_email, [to_email], fail_silently=False)

def contact(request):
    if request.method == "POST":
        data = json.loads(request.body.decode('utf-8'))
        name = data['name']
        email = data['email']
        message = data['message']
        date_of_contact = datetime.datetime.now()
        contact = Contact(name=name, email=email, message=message, date_of_contact=date_of_contact)
        try:
            contact.save()
            try:
                send_contact_email(contact)
                return HttpResponse("Good to go", status=200)
            except Exception:
                print('error: ', Exception)
        except Exception:
            print('error')
            return HttpResponse("Error!", status=400)
    else:
        return HttpResponse("Good to go", status=200)
