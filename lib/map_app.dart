import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_tech_task/core/helper/values_manger.dart';
import 'package:icon_tech_task/core/routing/app_router.dart';
import 'package:icon_tech_task/core/routing/routes.dart';
import 'package:icon_tech_task/core/theming/theme_data.dart';

class LiveRouteTrackingApp extends StatelessWidget {
  const LiveRouteTrackingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(AppSize.s375, AppSize.s812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: themeData,
        onGenerateRoute: AppRoute.generateRoute,
      ),
    );
  }
}
