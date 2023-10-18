from django.urls import path
from test_app.views.index import index, catalog, about, admin

urlpatterns = [
    path('', index, name="test_app.index"),
    path('about/', about, name="test_app.about"),
    path('catalog/', catalog, name="test_app.catalog"),
    path('admin/', admin, name="test_app.catalog")
]