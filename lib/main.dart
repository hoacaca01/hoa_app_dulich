import 'package:flutter/material.dart';
import 'package:two_app/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Sổ Tay Du lịch',
      home: HomeScreen(),
    );
  }
}
