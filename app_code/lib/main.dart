import 'package:firebase_core/firebase_core.dart';
import 'package:quadsquad/screens/screen1.dart';
import 'package:quadsquad/screens/screen2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quadsquad/screens/find_devices.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ScreenUtilInit(
      builder: () => MaterialApp(
            routes: {
              '/': (context) => const HomeScreen(),
              '/lock': (context) => const RoomLock(),
              '/device': (context) => const FlutterBlueApp(),
            },
          )));
}
