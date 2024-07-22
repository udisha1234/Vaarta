import 'package:flutter/material.dart';
import 'package:vaarta/screens/Auth/Auth_local_widgets/number_block.dart';
import 'package:vaarta/screens/Home/Home_screens/Home_screen.dart';
import 'package:vaarta/utils/colors.dart';
import 'package:vaarta/widgets/globalbutton.dart';
import 'package:vaarta/widgets/globalvspace.dart';

class OTP_screen extends StatefulWidget {
  const OTP_screen({super.key});

  @override
  State<OTP_screen> createState() => _OTP_screenState();
}

class _OTP_screenState extends State<OTP_screen> {
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
                    width: constraints.maxWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: constraints.maxHeight*0.6,
                          width: constraints.maxHeight*0.35,
                          child: Image.asset("assets/images/img_6_otp.png")),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    "OTP sent",
                    style: TextStyle(
                      fontSize: constraints.maxWidth * 0.065,
                      fontWeight: FontWeight.w600,
                      color: color.base
                    ),
                  ),
                  Text(
                    "Enter the OTP sent to you",
                    style: TextStyle(
                      fontSize: constraints.maxWidth * 0.045,
                      color: color.text,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  globalvspace(0.02, h),
                  Container(
                    width: constraints.maxWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Number_Block(height: constraints.maxHeight),
                        Number_Block(height: constraints.maxHeight),
                        Number_Block(height: constraints.maxHeight),
                        Number_Block(height: constraints.maxHeight),
                        Number_Block(height: constraints.maxHeight),
                      ],
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home_screen()),
                        );
                    },
                    child: globalbutton(h, w, "Verify")),
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
