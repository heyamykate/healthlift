from django import forms
from main.models import CompanyPage, Company

class CompanyPageChoiceField(forms.ModelChoiceField):
    def label_from_instance(self, obj):
        return obj.name

class CompanyForm(forms.ModelForm):
    company_page = CompanyPageChoiceField(queryset=CompanyPage.objects.all(), required=False)

    class Meta:
        model = Company
        fields = ['company_page', 'name', 'logo', 'info', 'link',]