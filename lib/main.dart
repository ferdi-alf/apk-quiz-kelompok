import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Hello Word',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
            useMaterial3: true),
        debugShowCheckedModeBanner: false,
        home: const SplashScreen());
  }
}
