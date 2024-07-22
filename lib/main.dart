import 'package:flutter/material.dart';
import 'package:vaarta/screens/Home/Home_screens/Details_screen.dart';
import 'package:vaarta/screens/Home/Home_screens/Home_screen.dart';
import 'package:vaarta/screens/Home/Home_screens/List_screen.dart';
import 'package:vaarta/screens/Home/Home_screens/Profile_screen.dart';
import 'package:vaarta/screens/Landing_Pages/Landing_screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
// pPpP