import 'dart:async';

import 'package:flutter/material.dart';

import '../../utility/app_color.dart';
import '../../utility/image_path.dart';
import '../BottomNavBar/bottom_nav_bar.dart';
import '../sign_in/sign_in.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) =>SignIn ()))

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: TColor.splashColor,
        body: Center(
          child: Image.asset(ImagePath.splashLogo),
        ));
  }
}