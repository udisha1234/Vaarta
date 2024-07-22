import 'package:flutter/material.dart';
import 'package:vaarta/screens/Auth/Auth_screens/otp_screen.dart';
import 'package:vaarta/utils/colors.dart';
import 'package:vaarta/widgets/globalbutton.dart';
import 'package:vaarta/widgets/globalvspace.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: color.prim,
        body: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: w * 0.06, vertical: h * 0.01),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Container(
                    height: constraints.maxHeight*0.6,
                    child: Image.asset("assets/images/img_5_enter_no.png")),
                  Spacer(),
                  // globalvspace(0.2, h),
                  Text(
                    "Phone",
                    style: TextStyle(
                      fontSize: constraints.maxWidth * 0.065,
                      fontWeight: FontWeight.w600,
                      color: color.base
                    ),
                  ),
                  Text(
                    "Enter your phone number:",
                    style: TextStyle(
                      fontSize: constraints.maxWidth * 0.045,
                      color: color.text,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  globalvspace(0.02, h),
                  Container(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight * 0.07,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(width: 0.8 , color: color.text),
                    ),
                  ),
                  Spacer(),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => OTP_screen()),
                        );
                      },
                      child: globalbutton(h, w, "Next")),
                  globalvspace(0.02, constraints.maxHeight)
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
