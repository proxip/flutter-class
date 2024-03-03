import 'package:flutter/material.dart';
import 'dart:async';
import 'dashboard_screen.dart'; // Importing DashboardScreen widget

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Delay for 2 seconds and then navigate to DashboardScreen
    Timer(
      Duration(seconds: 2),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => DashboardScreen()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MyCustomFlutterLogo(
              size: 100.0,
              colors: Colors.blue, // Example MaterialColor
            ),
            SizedBox(height: 20.0),
            Text(
              'Splash Screen',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCustomFlutterLogo extends StatelessWidget {
  final double size;
  final MaterialColor colors;

  const MyCustomFlutterLogo({
    Key? key,
    required this.size,
    required this.colors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [
            colors.shade300!,
            colors.shade500!,
            colors.shade700!,
            colors.shade900!,
          ],
        ),
      ),
      child: Center(
        child: Text(
          'FL',
          style: TextStyle(
            color: Colors.white,
            fontSize: size * 0.6,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
