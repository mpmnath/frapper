import 'package:flutter/material.dart';
import 'package:frapper/screens/home_page.dart';
import 'package:frapper/screens/main_view.dart';
import 'package:frapper/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Frapper',
      theme: customThemeData,
      home: const MainView(),
    );
  }
}
