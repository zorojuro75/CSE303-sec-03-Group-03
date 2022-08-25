from django.shortcuts import render
import mysql.connector
import pandas as pd
import plotly.graph_objects as go
from plotly.offline import plot
import plotly.express as px
# Create your views here.
def boxPlotStation(request):
        fig = go.Figure()
        data = pd.read_csv('D:\project\CSE303-sec-03-Group-03\\airQuality\data1.csv')
        data_sta = data.Station.unique()
        data_sta.sort()

        for station in data_sta:
            data_pm = data[data['Station'] == station]
            y1 = data_pm.PM25
            fig.add_trace(go.Box(y=y1, name=str(station)))

        fig.update_layout(
            xaxis_title = "Stations",
            yaxis_title = "PM2.5",

        )
        plot_div = plot(fig, output_type='div',include_plotlyjs=True)
        return render(request,'base.html',context={"plot4": plot_div})