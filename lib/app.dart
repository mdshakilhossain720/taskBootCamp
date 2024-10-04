import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bindings.dart';
import 'core/view/screen/splash_screen/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: ControllerBinding(),
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffFFFFFF),
      ),
      home: SplashScreen(),
    );
  }
}