from inspect import trace
from re import TEMPLATE
from tkinter import font
from turtle import goto, title
from django.shortcuts import render
import plotly.graph_objects as go
from plotly.offline import plot
import plotly.express as px
import pandas as pd
import numpy


TEMPLATE_DIRS = (
    'os.path.join(BASE_DIR, "templates"),'
)

# Daily PM2.5 Vs Division Line Chart

def index(request):
    def scatter():
        data = pd.read_csv('data1.csv')

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
        return plot_div

    # Barchart PM2.5 and Division
    def barChart():
        data = pd.read_csv('data1.csv')

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
        return plot_div

    # Yearly Comparison of Divisions Line Chart
    def lineChart():
        data = pd.read_csv('data1.csv')

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
        return plot_div

    
    # Station wise Box Plot
    def boxPlotStation():
        fig = go.Figure()
        data = pd.read_csv('data1.csv')
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
        return plot_div

    # Season wise BoxPlot 
    def boxPlotSeason():
        fig = go.Figure()
        data = pd.read_csv('data1.csv')
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
        return plot_div

    context ={
        'plot1': scatter(),
        'plot2' : barChart(),
        'plot3' : lineChart(),
        'plot4' : boxPlotStation(),
        'plot5' : boxPlotSeason()
    }
    return render(request, "index.html",context=context)
