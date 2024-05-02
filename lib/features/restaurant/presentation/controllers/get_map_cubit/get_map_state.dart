part of 'get_map_cubit.dart';

@immutable
abstract class GetMapState {}

class GetMapInitial extends GetMapState {}

class GetMapLoading extends GetMapState {}

class GetMapLoaded extends GetMapState {
  GetMapLoaded();
}

class GetMapError extends GetMapState {
  final String error;
  GetMapError({required this.error});
}
