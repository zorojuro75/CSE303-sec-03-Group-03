from django.shortcuts import render
import mysql.connector
import pandas as pd
import plotly.graph_objects as go
from plotly.offline import plot
import plotly.express as px
# Create your views here.
def divisonLineChart(request):
    data = pd.read_csv('D:\project\CSE303-sec-03-Group-03\\airQuality\data1.csv')
    data_div = data.Division.unique()
    dic = {}
    for div in data_div:
        data_rang = data[data['Division'] == div]
        pm25 = data_rang.PM25.to_numpy()
        dic[div] = pm25.mean()
    x1 =list(dic.keys())
    y1 = list(dic.values())
    fig = go.Figure(go.Scatter(
        x=x1,
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