import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_page.dart';
import 'splash_screen.dart'; // Importing SplashScreen widget
import 'dashboard_screen.dart'; // Importing DashboardScreen widget

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: HomePage(), // Initially navigate to SplashScreen
    );
  }
}
