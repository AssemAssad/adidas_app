
import 'package:adidas_app/HomeScreen.dart';
import 'package:adidas_app/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
