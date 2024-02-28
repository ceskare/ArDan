# from django import forms
#
# class UserInfoForm(forms.Form):
#   email_address = forms.CharField(label='Email address', max_length=15)
#   name = forms.CharField(label='Name', max_length=100)

from django import forms
from .models.post import Post2


class PostForm(forms.ModelForm):
    class Meta:
        model = Post2
        fields = ['id', 'text', 'date', 'author_id']
        widgets = {
            'date': forms.DateTimeInput(attrs={'type': 'datetime-local'}),
        }

