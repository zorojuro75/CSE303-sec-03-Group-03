from django.shortcuts import render
import mysql.connector
import pandas as pd
import plotly.graph_objects as go
from plotly.offline import plot
import plotly.express as px

def lineChart(request):
    data = pd.read_csv('D:\project\CSE303-sec-03-Group-03\\airQuality\data1.csv')
    data['time'] = pd.to_datetime(data['time'])
    data_year = data['time'].dt.year.unique()
    x1 = data_year
    data_div = data.Division.unique()
    tracing = []
    for div in data_div:
        y1 = []
        x1 = []
        data_rang = data[data['Division'] == div]
        for year in data_year:
            data_years = data_rang[data_rang['time'].dt.year == year]
            pm25 = data_years.PM25.to_numpy()
            y1.append(pm25.mean())
            x1.append(int(year))
        trace = go.Scatter(
                x=data_year,
                y=y1,
                mode='lines',
                name = div
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