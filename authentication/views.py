from collections import UserList
from http.client import HTTPResponse
from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib.auth import authenticate, login
from .models import *
# Create your views here.
def home(request):
    userName = UserT.username(UserT)
    pass1 = UserT.password(UserT)
    if request.method == "POST":
        username = request.POST['username']
        password = request.POST['password']
        user =  authenticate(username= userName, password = pass1)
        if user is not None:
            # login(request, user)
            return render(request, "dashboard/index.html")
        else:
            return render(request, "authentication/index.html")
    return render(request, "authentication/index.html")