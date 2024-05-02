import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:icon_tech_task/core/di/dependency_injection.dart';
import 'package:icon_tech_task/icon_tech_app.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ScreenUtil.ensureScreenSize();
  await setupGetIt();
  runApp(const LiveRouteTrackingApp());
}
