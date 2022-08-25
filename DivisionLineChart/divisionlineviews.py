from django.shortcuts import render
import mysql.connector
import pandas as pd
import plotly.graph_objects as go
from plotly.offline import plot
import plotly.express as px
# Create your views here.
def divisonLineChart(request):
    mydb=mysql.connector.connect(host='localhost',user='root',password='inja',database='redsight')
    mycursor=mydb.cursor()
    mycursor.execute('select division,avg(pm25) as pm from location as l inner join weather_info as w using(locID) group by division')
    data =mycursor.fetchall()
    x1 = []
    y1 = []
    for division, avgpm in data:
        x1.append(division)
        y1.append(avgpm)
    fig = go.Figure(go.Scatter(
        x = x1,
        y = y1
    ))
    fig.update_layout(
        title={
            'text': "PM-2.5 In Divisions",
            'y':0.9,
            'x':0.5,
            'xanchor': 'center',
            'yanchor': 'top',
            },
        xaxis_title = "Division",
        yaxis_title = "PM-2.5",
        font=dict(
            family="Courier New, monospace",
            size=18,
            color="Black"
        )
    )
    plot_div = plot(fig, output_type='div',include_plotlyjs=True)
    return render(request,'base.html',context={"plot1": plot_div})