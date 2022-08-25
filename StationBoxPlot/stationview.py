from django.shortcuts import render
import mysql.connector
import pandas as pd
import plotly.graph_objects as go
from plotly.offline import plot
import plotly.express as px
# Create your views here.
def boxPlotStation(request):
    fig = go.Figure()
    mydb=mysql.connector.connect(host='localhost',user='root',password='inja',database='redsight')
    mycursor=mydb.cursor()
    mycursor.execute('SELECT stationName,pm25 as pm25 from station inner join weather_info using(locID) order by stationNo')
    data = mycursor.fetchall()
    dataStation =[]
    for station, pm in data:
        if station not in dataStation:
            dataStation.append(station)
    
    for station in dataStation:
        y1=[]
        for sta, pm in data:
            if sta==station:
                y1.append(pm)
        fig.add_trace(go.Box(y=y1, name=str(station)))
    fig.update_layout(
        xaxis_title = "Stations",
        yaxis_title = "PM2.5",
    )
    plot_div = plot(fig, output_type='div',include_plotlyjs=True)
    return render(request,'base.html',context={"plot4": plot_div})
