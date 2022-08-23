
from re import TEMPLATE
from django.shortcuts import render

TEMPLATE_DIRS = (
    'os.path.join(BASE_DIR, "templates"),'
)

def home(request):
    return render(request, "home.html")
def index(request):
    return render(request, "index.html")