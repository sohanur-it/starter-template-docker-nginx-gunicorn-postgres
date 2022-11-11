from django.shortcuts import render

# Create your views here.
from django.http import request, HttpResponse
from .models import ImageModel


def index(request):
    images = ImageModel.objects.all()
    return render(request, 'index.html', context={
        "images": images
    })
    
