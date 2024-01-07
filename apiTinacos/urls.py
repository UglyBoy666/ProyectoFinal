"""apiTinacos URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
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
from django.contrib.auth import views as auth_views
from django.contrib import admin
from django.urls import path
from api.views import *
from api import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.login_view, name='login_view'),
    path('/registro', views.registro, name='registro'),
    path('index/', views.index, name='index'),
    path('home/', views.home, name='home'),
    path('maps/', views.maps, name='maps'),
    path('controles/', views.controls, name='controls'),
    path('logout/', auth_views.LogoutView.as_view(next_page='login_view'), name='logout'),
]

from django.contrib.staticfiles.urls import staticfiles_urlpatterns # new
urlpatterns += staticfiles_urlpatterns() # new