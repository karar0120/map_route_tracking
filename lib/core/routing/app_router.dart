import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icon_tech_task/core/di/dependency_injection.dart';
import 'package:icon_tech_task/core/helper/constances.dart';
import 'package:icon_tech_task/core/routing/routes.dart';
import 'package:icon_tech_task/features/map/presentation/controllers/get_map_cubit/get_map_cubit.dart';
import 'package:icon_tech_task/features/map/presentation/ui/screens/map.dart';


class AppRoute {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.mapScreen:
        initGetMapModule();
        return MaterialPageRoute(
            builder: (context) => BlocProvider<GetMapCubit>(
                  create: (context) => getIt<GetMapCubit>(),
                  child: const LiveRoutePage(),
                ));

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(Constances.noRouteFound),
              ),
              body: const Center(child: Text(Constances.noRouteFound)),
            ));
  }
}
