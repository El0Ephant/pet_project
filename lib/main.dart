import 'package:flutter/material.dart';
import 'package:pet_project/home_page.dart';
import 'package:pet_project/theme.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet app',
      theme: petTheme,
      home: const HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

