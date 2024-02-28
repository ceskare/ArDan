from django.db import models
# from test_app.serializers import *


class Product(models.Model):
    name = models.CharField(max_length=32, default=None)
    description = models.TextField(blank=True, null=True, default=None)
    # price = models.CharField(max_length=32, blank=False, null=False, default='0')
    price = models.IntegerField(default=0)
    # is_active = models.BooleanField(default=True)
    # created = models.DateTimeField(auto_now_add=True, auto_now=False)
    # updated = models.DateTimeField(auto_now_add=False, auto_now=True)
    # user = models.ForeignKey(User, verbose_name='Пользователь', on_delete=models.CASCADE())

    def __str__(self):
        return '%s %s' % (self.id, self.description)

    class Meta:
        verbose_name = 'Товар'
        verbose_name_plural = 'Товары'


class ProductImage(models.Model):
    product = models.ForeignKey(Product, blank=True, null=True, default=0, on_delete=models.CASCADE)
    image = models.ImageField(upload_to='products_images/')
    is_active = models.BooleanField(default=True)
    created = models.DateTimeField(auto_now_add=True, auto_now=False)
    updated = models.DateTimeField(auto_now_add=False, auto_now=True)

    def __str__(self):
        return '%s' % self.product.name

    class Meta:
        verbose_name = 'Фотография'
        verbose_name_plural = 'Фотографии'