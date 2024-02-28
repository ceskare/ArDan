from django_filters import rest_framework as filters

from products.models.product import Product


class CharFilterInFilter(filters.BaseInFilter, filters.CharFilter):
    pass


class ProductFilter(filters.FilterSet):
    # product_price = CharFilterInFilter(field_name='products__name', lookup_expr='in')
    price = filters.RangeFilter()
    class Meta:
        model = Product
        fields = ['price']
