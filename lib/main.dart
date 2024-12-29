import 'package:flutter/material.dart';
import 'package:plugin_app/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plugin Vendor',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(188, 23, 35, 1),
        ),
        useMaterial3: true,
        fontFamily: 'Pally',
      ),
      home: const SplashScreen(),
    );
  }
}
