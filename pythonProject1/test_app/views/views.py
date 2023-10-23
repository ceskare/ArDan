from django.shortcuts import render
from ..models.post import Post


def index(request):
    posts = Post.objects.order_by('-id')
    return render(request, 'test_app/index.html', {'title': 'Главная страница', 'post': posts})


def catalog(request):
    return render(request, 'test_app/catalog.html')


def about(request):
    return render(request, 'test_app/about.html')