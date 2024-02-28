from django.urls import path, include
from test_app.views import views
# from test_app.views import RegisterUser

from rest_framework import routers

router = routers.DefaultRouter()
router.register(r'product', views.ProductViewSet)
# router.register(r'accounts', AccountViewSet)
router.register(r'order', views.OrderViewSet)
# router.register(r'accounts', AccountViewSet)

urlpatterns = [
    path('', views.index, name="index"),
    path('about/', views.about, name="about"),
    path('catalog/', views.catalog, name="catalog"),
    # path('catalog/buy_button.html/', views.RegisterUser.as_view(), name='user_info'),
    path('catalog/buy_button.html/', views.adduser, name='user_info'),
    path('api/v1/', include(router.urls)),
    # path('api/v1/productlist/<int:pk>/', views.catalogAPIUpdate.as_view()),
    # path('api/v1/productlistdelete/<int:pk>/', views.catalogAPIDestroy.as_view()),
]


