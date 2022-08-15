from multiprocessing import context
from django.shortcuts import render
from dashboard.models import MemberT
def home(request):
    members = MemberT.objects.all()
    context = {
        'members': members
    }
    print(members)
    return render(request, 'dashboard/index.html', context)
