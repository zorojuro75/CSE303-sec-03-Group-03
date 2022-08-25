from django.shortcuts import render
import mysql.connector
import pandas as pd
import plotly.graph_objects as go
from plotly.offline import plot
import plotly.express as px

def lineChart(request):
    mydb=mysql.connector.connect(host='localhost',user='root',password='inja',database='redsight')
    mycursor=mydb.cursor()
    mycursor.execute('select division, year(daily), avg(pm25) from location inner join weather_info as w using(locID) group by division,year(daily) order by year(daily),division')
    data = mycursor.fetchall()
    tracing = []
    div = []
    for divi, x, y in data:
        if divi not in div and divi is not None:
            div.append(divi)
    for division in div:
        x1=[]
        y1=[]
        for divi, x, y in data:
            if(divi==division):
                x1.append(x)
                y1.append(y)
                trace = go.Scatter(
                    x=x1,
                    y=y1,
                    mode='lines',
                    name = str(divi)
                )
        tracing.append(trace)
        
    trace_data = [trace for trace in tracing ]
    layout = go.Layout(
        xaxis_title = "Yearly",
        yaxis_title = "PM2.5"
    )
    fig = go.Figure(trace_data,layout=layout)
    plot_div = plot(fig, output_type='div',include_plotlyjs=True)
    return render(request,'base.html',context={"plot3": plot_div})