from django.urls import path
from . import views
from django.conf.urls import include
urlpatterns =  [
    path('', views.home, name= 'home'),
    path('Graph', views.index, name= 'index'),
]