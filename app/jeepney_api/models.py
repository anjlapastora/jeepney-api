from django.db import models
from django.utils import timezone


class Jeepney(models.Model):
    jeepney_service_no = models.IntegerField()
    jeepney_stop_code = models.CharField(max_length=20)
    operator = models.CharField(max_length=50)
    origin_code = models.IntegerField()
    destination_code = models.IntegerField()
    estimated_arrival = models.DateTimeField(default=timezone.now)
    latitude = models.FloatField()
    longitude = models.FloatField()

    def __str__(self):
        return f"Jeepney #{self.jeepney_service_no} - {self.origin_code} to {self.destination_code}"


class PassengerVolume(models.Model):
    jeepney_stop_code = models.CharField(max_length=20)
    date_time = models.DateTimeField(default=timezone.now)
    passenger_volume = models.CharField(max_length=20)


class JeepneyStop(models.Model):
    jeepney_stop_code = models.CharField(max_length=20, unique=True)
    road_name = models.CharField(max_length=255)
    latitude = models.FloatField()
    longitude = models.FloatField()
