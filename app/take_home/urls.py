"""
URL configuration for take_home project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.2/topics/http/urls/
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

from django.contrib import admin
from django.urls import path
from jeepney_api import views as jeepney_view

urlpatterns = [
    path("admin/", admin.site.urls),
    path(
        "jeepney_arrival/<int:id>/",
        jeepney_view.jeepney_arrival,
        name="get_jeepney_arrival",
    ),
    path(
        "jeep_stop_passenger_volume/",
        jeepney_view.get_passenger_volume_by_jeepney_stop,
        name="get_passenger_volume_by_jeepney_stop",
    ),
    path(
        "jeepney_stops/",
        jeepney_view.get_all_jeepney_stops,
    ),
]
