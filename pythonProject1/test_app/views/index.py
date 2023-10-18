from django.shortcuts import render


def index(request):
    return render(request, 'test_app/index.html')


def catalog(request):
    return render(request, 'test_app/catalog.html')


def about(request):
    return render(request, 'test_app/about.html')


def admin(request):
    return render(request, 'test_app/admin.html')