from django.shortcuts import render
import mysql.connector
import pandas as pd
import plotly.graph_objects as go
from plotly.offline import plot
import plotly.express as px

# Create your views here.
def barChart(request):
    data = pd.read_csv('D:\project\CSE303-sec-03-Group-03\\airQuality\data1.csv')
    data['time'] = pd.to_datetime(data['time'])
    x1 = data['time'].dt.year.unique()
    dic = {}
    for year in x1:
        data_y = data[data['time'].dt.year == year]
        pm25 = data_y.PM25.to_numpy()
        dic[year] = pm25.mean()
    x1 =list(dic.keys())
    y1 = list(dic.values())
    fig = px.bar(data, x=x1, y=y1)
    fig.update_layout(
        title={
            'text': "PM-2.5 With Year",
            'y':0.9,
            'x':0.5,
            'xanchor': 'center',
            'yanchor': 'top',
            },
        xaxis_title = "Yearly",
        yaxis_title = "Average PM-2.5",
        font=dict(
            family="Courier New, monospace",
            size=18,
            color="Black"
        )
    )
    plot_div = plot(fig, output_type='div',include_plotlyjs=True)
    return render(request,'base.html',context={"plot2": plot_div})