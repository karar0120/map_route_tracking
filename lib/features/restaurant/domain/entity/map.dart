class GetMap {
  List<MapRoute> routes;

  GetMap({required this.routes});
}

class MapRoute {
  List<Leg> legs;
  Bounds bounds;
  Polyline overviewPolyline;
  MapRoute({
    required this.legs,
  required this.bounds,
    required this.overviewPolyline,
  });
}

class Bounds {
  Northeast northeast;
  Northeast southwest;

  Bounds({
    required this.northeast,
    required this.southwest,
  });
}

class Northeast {
  double lat;
  double lng;

  Northeast({
    required this.lat,
    required this.lng,
  });
}

class Polyline {
  String points;

  Polyline({
    required this.points,
  });
}

class Leg {
  Distance distance;
  Distance duration;

  Leg({required this.distance, required this.duration});
}

class Distance {
  String text;
  int value;

  Distance({
    required this.text,
    required this.value,
  });
}
