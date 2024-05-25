from rest_framework import serializers
from django.utils import timezone

from .models import Jeepney, PassengerVolume, JeepneyStop


class JeepneySerializer(serializers.ModelSerializer):
    class Meta:
        model = Jeepney
        fields = (
            "jeepney_service_no",
            "jeepney_stop_code",
            "operator",
            "origin_code",
            "destination_code",
            "estimated_arrival",
            "latitude",
            "longitude",
        )

    def validate_estimated_arrival(self, value):
        """
        Ensure estimated arrival time is in the future.
        """
        if value < timezone.now():
            raise serializers.ValidationError(
                "Estimated arrival time must be in the future."
            )
        return value


class PassengerCountSerializer(serializers.ModelSerializer):
    class Meta:
        model = PassengerVolume
        fields = (
            "jeepney_stop_code",
            "date_time",
            "passenger_volume",
        )


class JeepneyStopSerializer(serializers.ModelSerializer):
    class Meta:
        model = JeepneyStop
        fields = (
            "jeepney_stop_code",
            "road_name",
            "latitude",
            "longitude",
        )
