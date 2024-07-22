import 'package:flutter/material.dart';
import 'package:vaarta/screens/Landing_Pages/Landing_screens/Onboarding.dart';
import 'package:vaarta/utils/colors.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(seconds: 2), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => OnboardingScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: color.prim,
        body: Column(
          children: [
            Container(
              height: h * 0.3,
            ),
            Container(
                height: h * 0.3,
                width: h * 0.3,
                child: Image.asset(
                  'assets/images/img_1_splashScreen.png',
                  fit: BoxFit.contain,
                )),
            Container(
              height: h * 0.02,
            ),
            Text(
              "Let's Get Started",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700,color: color.base),
            )
          ],
        ),
      ),
    );
  }
}
