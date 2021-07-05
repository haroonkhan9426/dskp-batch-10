import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

///
/// Types of Widgets:
/// 1) Stateless Widget: Static - No change at run time
/// 2) Statefull widget: Dynamic - Can change at run time
///
