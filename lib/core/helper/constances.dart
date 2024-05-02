import 'package:google_maps_flutter/google_maps_flutter.dart';

class Constances {
  static const noRouteFound = "noRouteFound";

  static const noRecoredsFound = "No Records Found";
  static const clientCredentials = "client_credentials";
  static const accessToken = "accessToken";
  static const empty = '';
  static const int zero = 0;
  static const double zeroPoint = 0.0;


  static List<LatLng> decodePoly(String encoded) {
    List<LatLng> points = [];
    int index = 0;
    int len = encoded.length;
    int lat = 0;
    int lng = 0;

    while (index < len) {
      int b;
      int shift = 0;
      int result = 0;
      do {
        b = encoded.codeUnitAt(index++) - 63;
        result |= (b & 0x1f) << shift;
        shift += 5;
      } while (b >= 0x20);
      int dlat = ((result & 1) != 0 ? ~(result >> 1) : (result >> 1));
      lat += dlat;

      shift = 0;
      result = 0;
      do {
        b = encoded.codeUnitAt(index++) - 63;
        result |= (b & 0x1f) << shift;
        shift += 5;
      } while (b >= 0x20);
      int dlng = ((result & 1) != 0 ? ~(result >> 1) : (result >> 1));
      lng += dlng;

      LatLng position = LatLng(lat / 1e5, lng / 1e5);
      points.add(position);
    }
    return points;
  }

}
