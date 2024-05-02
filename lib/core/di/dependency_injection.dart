import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:icon_tech_task/core/helper/shared_preferences.dart';
import 'package:icon_tech_task/core/networking/api_service.dart';
import 'package:icon_tech_task/core/networking/dio_factory.dart';
import 'package:icon_tech_task/core/networking/netwotk_info.dart';
import 'package:icon_tech_task/features/map/data/repos/irepository.dart';
import 'package:icon_tech_task/features/map/domain/repository/restaurant_repo.dart';
import 'package:icon_tech_task/features/map/domain/use_case/get_map.dart';
import 'package:icon_tech_task/features/map/presentation/controllers/get_map_cubit/get_map_cubit.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';


final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  getIt.registerLazySingleton<NetworkInfo>(() =>
      NetworkInfoImpl(internetConnectionChecker: InternetConnectionChecker()));

  final sharedPreferences = await SharedPreferences.getInstance();

  getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);

  getIt.registerLazySingleton<AppPreferences>(
      () => AppPreferences(sharedPreferences: getIt()));
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));


  getIt.registerLazySingleton<MapRepository>(
      () => MapRepo(
            getIt<ApiService>(),
            getIt<AppPreferences>(),
            getIt<NetworkInfo>(),
          ));
}

Future<void> initGetMapModule() async {
  if (!GetIt.I.isRegistered<GetMapUseCase>()) {
    getIt.registerFactory<GetMapUseCase>(
        () => GetMapUseCase(
              mapRepository: getIt(),
            ));
    getIt.registerFactory<GetMapCubit>(() =>
        GetMapCubit(
            getMapUseCase:
                getIt<GetMapUseCase>()));
  }
}

