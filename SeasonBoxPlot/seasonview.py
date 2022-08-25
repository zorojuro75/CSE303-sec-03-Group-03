from django.shortcuts import render
import mysql.connector
import pandas as pd
import plotly.graph_objects as go
from plotly.offline import plot
import plotly.express as px

# Create your views here.
def boxPlotSeason(request):
        fig = go.Figure()
        data = pd.read_csv('E:\BDSM\CSE303-sec-03-Group-03\\airQuality\data1.csv')
        data_seas = data.Season.unique()

        for season in data_seas:
            data_pm = data[data['Season'] == season]
            y1 = data_pm.PM25
            fig.add_trace(go.Box(y=y1, name=season))

        fig.update_layout(
            xaxis_title = "Seasons",
            yaxis_title = "PM2.5",
            
        )
        plot_div = plot(fig, output_type='div',include_plotlyjs=True)
        return render(request,'base.html',context={"plot5": plot_div})