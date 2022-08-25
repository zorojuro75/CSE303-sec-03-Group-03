from django.shortcuts import render
import mysql.connector
import pandas as pd
import plotly.graph_objects as go
from plotly.offline import plot
import plotly.express as px

# Create your views here.
def boxPlotSeason(request):
    fig = go.Figure()
    mydb=mysql.connector.connect(host='localhost',user='root',password='inja',database='redsight')
    mycursor=mydb.cursor()
    mycursor.execute('SELECT season,pm25 from weather_info order by season ;')
    data = mycursor.fetchall()
    dataseason =[]
    for season, pm in data:
        if season not in dataseason:
            dataseason.append(season)
    
    for season in dataseason:
        y1=[]
        for sta, pm in data:
            if sta==season:
                y1.append(pm)
        fig.add_trace(go.Box(y=y1, name=str(season)))
    fig.update_layout(
        xaxis_title = "seasons",
        yaxis_title = "PM2.5",
    )
    plot_div = plot(fig, output_type='div',include_plotlyjs=True)
    return render(request,'base.html',context={"plot4": plot_div})