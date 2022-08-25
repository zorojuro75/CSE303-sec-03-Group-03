from django.shortcuts import render
import mysql.connector
import pandas as pd
import plotly.graph_objects as go
from plotly.offline import plot
import plotly.express as px

def base(request):
    return render (request, "base.html")
# Barchart PM2.5 and Division
def home(request):
    if request.method == "POST":
        username = request.POST['username']
        password = request.POST['password']
        if username=='inja':
            return render(request, "base.html")
    return render(request, "index.html")