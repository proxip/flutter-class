import 'package:flutter/material.dart';
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
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
          accentColor: Colors.green,
        ),
        primaryColor: Colors.blue,
      ),
      home: HomePage(), // Initially navigate to SplashScreen
    );
  }
}
