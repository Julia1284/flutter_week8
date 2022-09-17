import 'package:flutter/material.dart';
import 'package:week_8_2/screens/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Search Gifs',
      home: HomeScreen(),
    );
  }
}
