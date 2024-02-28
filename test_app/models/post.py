from django import forms
# from django.contrib.auth.forms import UserCreationForm
# from django.contrib.auth.models import User
from django.db import models


class Post2(models.Model):
    # id = models.IntegerField(primary_key=True)
    text = models.TextField()
    date = models.DateTimeField()
    author_id = models.IntegerField()


class AddUser(forms.Form):
    email = forms.EmailField(label='Адрес электронной почты')
    name = forms.CharField(max_length=32, label='Имя')


class Post(models.Model):
    text = models.TextField('Описание')
    date = models.DateTimeField()
    likes = models.IntegerField(default=0)

    def __str__(self):
        return self.text

    class Meta:
        verbose_name = 'Пост'
        verbose_name_plural = 'Посты'


class Subscriber(models.Model):
    email = models.EmailField('Адрес электронной почты')
    name = models.CharField(max_length=32)

    def __str__(self):
        return "%s %s" % (self.email, self.name)

    class Meta:
        verbose_name = 'Пользователь'
        verbose_name_plural = 'Пользователи'


# class RegisterUserForm(UserCreationForm):
#     class Meta:
#         model = User
#         fields = ('username', 'email')
#         widgets = {
#             'username' : forms.TextInput(attrs={'class', 'from-input'}),
#             'email' : forms.TextInput(attrs={'class', 'from-input'}),
#         }