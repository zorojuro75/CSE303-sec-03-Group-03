from django.shortcuts import render
from django.contrib.auth import authenticate, login
# Create your views here.
def home(request):
    if request.method == "POST":
        username = request.POST['username']
        password = request.POST['password']
        user =  authenticate(username= username, password = password)
        if user is not None:
            login(request, user)
            return render(request, "dashboard/index.html")
        else:
            return render(request, "authentication/index.html")
    return render(request, "authentication/index.html")