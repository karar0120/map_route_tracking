import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:icon_tech_task/features/restaurant/presentation/controllers/get_map_cubit/get_map_cubit.dart';

class LiveRoutePage extends StatelessWidget {
  const LiveRoutePage({super.key});

  @override
  Widget build(BuildContext context) {
   final mapCubit= context.read<GetMapCubit>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Live Route Tracking'),
        centerTitle: true,
      ),
      body: BlocBuilder<GetMapCubit, GetMapState>(
        builder: (context, state) {
          return Stack(
            alignment: AlignmentDirectional.center,
            children: [
              GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: mapCubit.dataSource,
                  zoom: 12,
                ),
                onMapCreated: (controller) {
                  mapCubit.mapController = controller;
                },
                polylines: <Polyline>{
                  Polyline(
                    polylineId: const PolylineId('route'),
                    color: Colors.blue,
                    width: 5,
                    points: mapCubit.routeCoordinates,
                  ),
                },
                markers: {
                  Marker(
                    markerId: const MarkerId('dataSource'),
                    position: mapCubit.dataSource,
                  ),
                  Marker(
                    markerId: const MarkerId('destination'),
                    position: mapCubit.destination,
                  ),
                },
              ),
              Positioned(
                top: 20,
                left: 20,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Distance: ${mapCubit.distance}'),
                      const SizedBox(
                        height: 20,
                      ),
                      Text('Duration: ${mapCubit.duration}'),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(12),
        child: FloatingActionButton(
          onPressed: () {
            mapCubit.emitGetMapState();
          },
          child: const Icon(Icons.directions),
        ),
      ),
    );
  }
}