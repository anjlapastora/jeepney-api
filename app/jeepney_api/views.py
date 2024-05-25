from rest_framework.response import Response
from rest_framework.decorators import api_view, renderer_classes
from rest_framework.renderers import JSONRenderer


from .models import Jeepney, PassengerVolume, JeepneyStop
from .serializers import (
    JeepneySerializer,
    PassengerCountSerializer,
    JeepneyStopSerializer,
)


@api_view(("GET",))
@renderer_classes((JSONRenderer,))
def jeepney_arrival(request, id):
    """This endpoint returns real-time jeepney arrival information of jeepney
    services at a queried jeepney stop."""
    try:
        jeepney = Jeepney.objects.get(jeepney_service_no=id)
    except Jeepney.DoesNotExist:
        return Response(status=404)
    serializer = JeepneySerializer(jeepney)
    return Response(serializer.data)


@api_view(("GET",))
@renderer_classes((JSONRenderer,))
def get_passenger_volume_by_jeepney_stop(request):
    """Returns real-time passenger volume of a queried jeepney stop"""
    try:
        jeepney_stop_code = request.GET.get("stop_code")
        jp_stop = PassengerVolume.objects.get(jeepney_stop_code=jeepney_stop_code)
    except PassengerVolume.DoesNotExist:
        return Response(status=404)
    serializer = PassengerCountSerializer(jp_stop)
    return Response(serializer.data)


@api_view(("GET",))
@renderer_classes((JSONRenderer,))
def get_all_jeepney_stops(request):
    """Returns a list of jeepney stops"""
    try:
        jp_stops = JeepneyStop.objects.all()
    except JeepneyStop.DoesNotExist:
        return Response(status=404)
    serializer = JeepneyStopSerializer(jp_stops, many=True)
    return Response(serializer.data)
