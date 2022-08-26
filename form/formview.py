from django.shortcuts import render
from django.http import HttpResponseRedirect
import mysql.connector

# Create your views here.
def forms(request):
    mydb=mysql.connector.connect(host='localhost',user='root',password='inja',database='redsight')
    mycursor=mydb.cursor()
    if request.method =="POST":
        stationID = request.POST['stationID']

        pm25 = request.POST['pm25']
        season = request.POST['season']
        rain = request.POST['rain']
        humidity = request.POST['humidity']
        cloud = request.POST['cloud']
        wind = request.POST['wind']
        visibility = request.POST['visibility']
        sql=('INSERT INTO weather_info (pm25,season,rainPrec,relHumid,cloudCover,windSpeed,visibility,stationID) VALUES (%s,%s,%s,%s,%s,%s,%s,%s')
        val=(pm25,season,rain,humidity,cloud,wind,visibility,stationID)
        mycursor.execute(sql,val)
   
        return render(request, 'form.html')
    return render(request, 'form.html')