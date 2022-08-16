from multiprocessing import context
from django.shortcuts import render
from dashboard.models import MemberT
def home(request):
    if request.method == "POST":
        hello = "hello" 
        return render(request, 'dashboard/index.html', hello)
    return render(request, 'dashboard/index.html', hello)