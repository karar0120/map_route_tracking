import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_response.g.dart';

@JsonSerializable()
class GetMapResponse {
  List<RouteResponse>? routes;

  GetMapResponse({this.routes});

  factory GetMapResponse.fromJson(Map<String, dynamic> json) =>
      _$GetMapResponseFromJson(json);
}

@JsonSerializable()
class BoundsResponse {
  NortheastResponse? northeast;
  NortheastResponse? southwest;

  BoundsResponse({
    this.northeast,
    this.southwest,
  });

  factory BoundsResponse.fromJson(Map<String, dynamic> json) =>
      _$BoundsResponseFromJson(json);
}

@JsonSerializable()
class NortheastResponse {
  double? lat;
  double? lng;

  NortheastResponse({
    this.lat,
    this.lng,
  });

  factory NortheastResponse.fromJson(Map<String, dynamic> json) =>
      _$NortheastResponseFromJson(json);
}

@JsonSerializable()
class RouteResponse {
  List<LegResponse>? legs;
  BoundsResponse? bounds;
  PolylineResponse? overviewPolyline;

  RouteResponse({
    this.legs,
    this.bounds,
    this.overviewPolyline,
  });

  factory RouteResponse.fromJson(Map<String, dynamic> json) =>
      _$RouteResponseFromJson(json);
}

@JsonSerializable()
class PolylineResponse {
  String? points;

  PolylineResponse({
    this.points,
  });

  factory PolylineResponse.fromJson(Map<String, dynamic> json) =>
      _$PolylineResponseFromJson(json);
}

@JsonSerializable()
class LegResponse {
  DistanceResponse? distance;
  DistanceResponse? duration;

  LegResponse({this.distance, this.duration});

  factory LegResponse.fromJson(Map<String, dynamic> json) =>
      _$LegResponseFromJson(json);
}

@JsonSerializable()
class DistanceResponse {
  String? text;
  int? value;

  DistanceResponse({
    this.text,
    this.value,
  });

  factory DistanceResponse.fromJson(Map<String, dynamic> json) =>
      _$DistanceResponseFromJson(json);
}
