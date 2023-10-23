from django.db import models


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
