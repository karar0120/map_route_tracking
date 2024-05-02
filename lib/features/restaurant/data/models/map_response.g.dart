// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetMapResponse _$GetMapResponseFromJson(Map<String, dynamic> json) =>
    GetMapResponse(
      routes: (json['routes'] as List<dynamic>?)
          ?.map((e) => RouteResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetMapResponseToJson(GetMapResponse instance) =>
    <String, dynamic>{
      'routes': instance.routes,
    };

BoundsResponse _$BoundsResponseFromJson(Map<String, dynamic> json) =>
    BoundsResponse(
      northeast: json['northeast'] == null
          ? null
          : NortheastResponse.fromJson(
              json['northeast'] as Map<String, dynamic>),
      southwest: json['southwest'] == null
          ? null
          : NortheastResponse.fromJson(
              json['southwest'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BoundsResponseToJson(BoundsResponse instance) =>
    <String, dynamic>{
      'northeast': instance.northeast,
      'southwest': instance.southwest,
    };

NortheastResponse _$NortheastResponseFromJson(Map<String, dynamic> json) =>
    NortheastResponse(
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$NortheastResponseToJson(NortheastResponse instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };

RouteResponse _$RouteResponseFromJson(Map<String, dynamic> json) =>
    RouteResponse(
      legs: (json['legs'] as List<dynamic>?)
          ?.map((e) => LegResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      bounds: json['bounds'] == null
          ? null
          : BoundsResponse.fromJson(json['bounds'] as Map<String, dynamic>),
      overviewPolyline: json['overviewPolyline'] == null
          ? null
          : PolylineResponse.fromJson(
              json['overviewPolyline'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RouteResponseToJson(RouteResponse instance) =>
    <String, dynamic>{
      'legs': instance.legs,
      'bounds': instance.bounds,
      'overviewPolyline': instance.overviewPolyline,
    };

PolylineResponse _$PolylineResponseFromJson(Map<String, dynamic> json) =>
    PolylineResponse(
      points: json['points'] as String?,
    );

Map<String, dynamic> _$PolylineResponseToJson(PolylineResponse instance) =>
    <String, dynamic>{
      'points': instance.points,
    };

LegResponse _$LegResponseFromJson(Map<String, dynamic> json) => LegResponse(
      distance: json['distance'] == null
          ? null
          : DistanceResponse.fromJson(json['distance'] as Map<String, dynamic>),
      duration: json['duration'] == null
          ? null
          : DistanceResponse.fromJson(json['duration'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LegResponseToJson(LegResponse instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'duration': instance.duration,
    };

DistanceResponse _$DistanceResponseFromJson(Map<String, dynamic> json) =>
    DistanceResponse(
      text: json['text'] as String?,
      value: (json['value'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DistanceResponseToJson(DistanceResponse instance) =>
    <String, dynamic>{
      'text': instance.text,
      'value': instance.value,
    };
