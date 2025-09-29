from django.shortcuts import render
from django.http import HttpResponse
from django.http import JsonResponse
# Create your views here.

def say_hello(request):
    return HttpResponse("Hello World")


# def home_page(request):
#     return JsonResponse({"message": "Hello from views"})