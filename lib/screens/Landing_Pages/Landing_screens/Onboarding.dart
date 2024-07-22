import 'package:flutter/material.dart';
import 'package:vaarta/screens/Auth/Auth_screens/login_screen.dart';
import 'package:vaarta/screens/Landing_Pages/Landing_local_widget/info.dart';
import 'package:vaarta/screens/Landing_Pages/Landing_local_widget/nextButton.dart';
import 'package:vaarta/screens/Landing_Pages/Landing_local_widget/text.dart';
import 'package:vaarta/utils/colors.dart';
import 'package:vaarta/widgets/globalvspace.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: color.prim,
        body: PageView(
          controller: _pageController,
          children: [
            buildPage(
              context,
              h,
              w,
              "assets/images/img_3_onboarding.png",
              "The Best Social Media",
              "App of the Century",
              [
                "Social media is a tool that is becoming ",
                "quite popular these days because",
                "of its user-friendly features.",
              ],
              () {
                _pageController.nextPage(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
            ),
            buildPage(
              context,
              h,
              w,
              "assets/images/img_2_onboarding.png",
              "Let's Connect with",
              "Everyone in the World",
              [
                "Social media is a tool that is becoming ",
                "quite popular these days because",
                "of its user-friendly features.",
              ],
              () {
                _pageController.nextPage(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
            ),
            buildPage(
              context,
              h,
              w,
              "assets/images/img_4_onboarding.png",
              "Everything you can do",
              "In the App",
              [
                "Social media is a tool that is becoming ",
                "quite popular these days because",
                "of its user-friendly features.",
              ],
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPage(
    BuildContext context,
    double h,
    double w,
    String imagePath,
    String title1,
    String title2,
    List<String> infoTexts,
    VoidCallback onNext,
  ) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: w * 0.06),
      child: Column(
        children: [
          globalvspace(0.2, h),
          Container(
            height: h * 0.3,
            width: h * 0.4,
            child: Image.asset(imagePath, fit: BoxFit.contain),
          ),
          globalvspace(0.14, h),
          text(txt: title1),
          text(txt: title2),
          globalvspace(0.01, h),
          ...infoTexts.map((text) => info(txt: text)).toList(),
          globalvspace(0.06, h),
          InkWell(
            onTap: onNext,
            child: button(),
          ),
        ],
      ),
    );
  }
}
