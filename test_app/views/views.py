# from django.contrib.auth.forms import AuthenticationForm, UserCreationForm
from django.http import Http404
from django.shortcuts import render, redirect
from django_filters.rest_framework import DjangoFilterBackend
from rest_framework import generics, viewsets, status
from rest_framework.mixins import DestroyModelMixin
from rest_framework.response import Response

from orders.models.order import Order
# from rest_framework.permissions import IsAuthenticatedOrReadOnly, IsAdminUser
# from rest_framework.response import Response

from ..serializers import ProductsSerializer, OrdersSerializer
from products.models.product import Product
# from django.views.generic import CreateView

from ..models.post import Post, AddUser, Subscriber
from ..service import ProductFilter
from ..utils import DataMixin


def index(request):
    posts = Post.objects.order_by('-id')
    return render(request, 'test_app/index.html', {'title': 'Главная страница', 'post': posts})


def catalog(request):
    return render(request, 'test_app/catalog.html')


def about(request):
    return render(request, 'test_app/about.html')

def adduser(request):
    if  request.method == 'POST':
        form = AddUser(request.POST)
        if form.is_valid():
            # print(form.cleaned_data)
            try:
                Subscriber.objects.create(**form.cleaned_data)
                return redirect('catalog')
            except:
                form.add_error(None, 'Ошибка заявки')
    else:
        form = AddUser()
    return render(request, 'test_app/buy_button.html', {'form': form})

# class RegisterUser(DataMixin, CreateView):
#     form_class = UserCreationForm
#     template_name = 'test_app/buy_button.html'
#
#     def get_context_data(self, *, object_list=None, **kwargs):
#         context = super().get_context_data(**kwargs)
#         c_def = self.get_user_context(title="Заказ")
#         return dict(list(context.items()) + list(c_def.items()))


class ProductViewSet(viewsets.ModelViewSet):
    queryset = Product.objects.all()
    serializer_class = ProductsSerializer
    filter_backends = (DjangoFilterBackend, )
    filterset_class = ProductFilter

    def destroy(self, request, pk=None):
        try:
            instance = self.get_object()
            serializer = self.get_serializer(instance)
            instance.delete()
            return Response(serializer.data)
        except Http404:
            return Response(status=status.HTTP_204_NO_CONTENT)


class OrderViewSet(viewsets.ModelViewSet):
    queryset = Order.objects.all()
    serializer_class = OrdersSerializer

    def destroy(self, request, pk=None):
        try:
            instance = self.get_object()
            serializer = self.get_serializer(instance)
            instance.delete()
            return Response(serializer.data)
        except Http404:
            return Response(status=status.HTTP_204_NO_CONTENT)



# class catalogAPIList(generics.ListAPIView):
#     serializer_class = ProductsSerializer
#     queryset = Product.objects.all()
#     # permission_classes = (IsAuthenticatedOrReadOnly, )
#
#
# class catalogAPIUpdate(generics.RetrieveUpdateAPIView):
#     serializer_class = ProductsSerializer
#     queryset = Product.objects.all()
#     # permission_classes = (IsAdminUser,)
#
#
# class catalogAPIDestroy(generics.RetrieveDestroyAPIView):
#     queryset = Product.objects.all()
#     serializer_class = ProductsSerializer
    # permission_classes = (IsAdminUser,)
    # def get(self, request):

    # def get(self, request, *args, **kwargs):
    #     pk = kwargs.get('pk', None)
    #     if not pk:
    #         product = Product.objects.all()
    #         return Response(ProductsSerializer(product, many=True).data)
    #
    #     try:
    #         instance = Product.objects.get(pk=pk)
    #     except:
    #         return Response({'error': 'Object does not exist'})
    #
    #     serializer = ProductsSerializer(instance=instance)
    #     return Response(serializer.data)
    #
    #
    #
    # def post(self, request):
    #     serializer = ProductsSerializer(data=request.data)
    #     serializer.is_valid(raise_exception=True)
    #     serializer.save()
    #
    #     return Response(serializer.data)
    #
    # def put(self, request, *args, **kwargs):
    #     pk = kwargs.get('pk', None)
    #     if not pk:
    #         return Response(status=405)
    #
    #     try:
    #         instance = Product.objects.get(pk=pk)
    #     except:
    #         return Response(None, status=404)
    #
    #     serializer = ProductsSerializer(data=request.data, instance=instance)
    #     serializer.is_valid(raise_exception=True)
    #     serializer.save()
    #     return Response(serializer.data)
    #
    # def delete(self, request, *args, **kwargs):
    #     pk = kwargs.get('pk', None)
    #     if not pk:
    #         return Response({'error': 'Method DELETE not allowed'})
    #
    #     try:
    #         instance = Product.objects.get(pk=pk)
    #     except:
    #         return Response({'error': 'Object does not exist'})
    #
    #     serializer = ProductsSerializer(data=request.data, instance=instance)
    #     serializer.is_valid(raise_exception=True)
    #     serializer.delete()
    #     return Response({'post': 'delete post ' + str(pk)})