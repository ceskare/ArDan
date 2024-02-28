from rest_framework import serializers

from products.models.product import Product, ProductImage
from orders.models.order import Order


# class ProductsModel:
#     def __init__(self, name, description, price):
#         self.name = name
#         self.description = description
#         self.price = price


class OrdersSerializer(serializers.ModelSerializer):
    # user = serializers.HiddenField(default=serializers.CurrentUserDefault())

    class Meta:
        model = Order
        fields = ("id", "customer_name", "customer_email", "customer_phone", "status")


class ProductsSerializer(serializers.ModelSerializer):
    # user = serializers.HiddenField(default=serializers.CurrentUserDefault())

    class Meta:
        model = Product
        fields = ("id", "name", "description", "price")
    # name = serializers.CharField(max_length=64, default=None)
    # description = serializers.CharField(default=None)
    # price = serializers.CharField(max_length=16, default=None)
    # is_active = serializers.BooleanField(default=True)
    # created = serializers.DateTimeField(read_only=True)
    # updated = serializers.DateTimeField(read_only=True)

    # def create(self, validated_data):
    #      return Product.objects.all(**validated_data)
    #
    # def update(self, instance, validated_data):
    #     instance.name = validated_data.get('name', instance.name)
    #     instance.description = validated_data.get('description', instance.description)
    #     instance.price = validated_data.get('price', instance.price)
    #     instance.is_active = validated_data.get('is_active', instance.is_active)
    #     instance.created = validated_data.get('created', instance.created)
    #     instance.updated = validated_data.get('updated', instance.updated)
    #     instance.save()
    #     return instance


class ProductImageSerializer(serializers.ModelSerializer):
    class Meta:
        model = ProductImage
        fields = ('image')


class ProductsSerializerDetails(serializers.ModelSerializer):
    productimages_set = ProductImageSerializer(many=True, read_only=True)

    class Meta:
        model = Product
        fields = ("id", "name", "description", "price", "productimages_set")
