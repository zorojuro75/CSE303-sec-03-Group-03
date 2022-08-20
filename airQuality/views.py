import mysql.connector
 

def user(request):
    data = mysql.connector.connect(
    host="localhost",
    user="root",
    password="poralekhakoreultayfelsi",
    database="aqi"
    )
    cursor = data.cursor()
    cursor.execute()