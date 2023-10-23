from django import forms
from .order import Order

class AddOrder(forms.ModelForm):
    class Meta:
        model = Order
        fields = ['name', 'number', 'comment']