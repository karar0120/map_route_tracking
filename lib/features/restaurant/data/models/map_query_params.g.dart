// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_query_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MapQueryParams _$MapQueryParamsFromJson(Map<String, dynamic> json) =>
    MapQueryParams(
      origin: json['origin'] as String,
      destination: json['destination'] as String,
      key: json['key'] as String,
    );

Map<String, dynamic> _$MapQueryParamsToJson(MapQueryParams instance) =>
    <String, dynamic>{
      'origin': instance.origin,
      'destination': instance.destination,
      'key': instance.key,
    };
