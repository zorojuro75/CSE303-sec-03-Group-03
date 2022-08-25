from django.shortcuts import render
import mysql.connector
import pandas as pd
import plotly.graph_objects as go
from plotly.offline import plot
import plotly.express as px

def base(request):
    return render (request, "base.html")