"""airQuality URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from airQuality import views
from django.contrib import admin
from django.urls import path
from DivisionLineChart import divisionlineviews
from DivisionBarChart import divisionbarchartviews
from yearlyComp import yearlyviews
from SeasonBoxPlot import seasonview
from StationBoxPlot import stationview
urlpatterns = [
    path('admin/', admin.site.urls),
    path('', divisionlineviews.divisonLineChart),
    path('barchart/', divisionbarchartviews.barChart), #divisionbarchartviews/
    path('yearlycomp/', yearlyviews.lineChart),
    path('boxPlotSeason/', seasonview.boxPlotSeason),
    path('boxPlotStation/', stationview.boxPlotStation),
]
