import 'package:flutter/material.dart';
import 'package:quizz_app/ui/screens/home_screen.dart';
import 'package:quizz_app/ui/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
