import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sarava/infra/color/AppColors.dart';

import '../login/Login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key, required this.title});

  final String title;

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  startSplashScreen() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Login()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.corPrincipal,
      body: Center(
        child: Image.asset(
          'assets/images/logosarava.png',
          width: 200,
          height: 200,
        ),
      ),
    );
  }

  @override
  void initState() {
    startSplashScreen();
  }
}
