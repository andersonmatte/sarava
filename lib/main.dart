import 'package:flutter/material.dart';
import 'package:sarava/ui/splash/SplashScreen.dart';

import 'infra/hive/HiveData.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 // await HiveData.init();
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'SplashScreen',
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SplashScreen(
      title: '',
    );
  }
}
