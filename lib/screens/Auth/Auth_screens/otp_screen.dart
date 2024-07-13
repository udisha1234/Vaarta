import 'package:flutter/material.dart';
import 'package:vaarta/screens/Auth/Auth_local_widgets/number_block.dart';
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
        body: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: w * 0.06, vertical: h * 0.01),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // globalvspace(0.08, h),
                  // Text(
                  //   "OTP sent",
                  //   style: TextStyle(
                  //     fontSize: constraints.maxWidth * 0.065,
                  //     fontWeight: FontWeight.w600,
                  //   ),
                  // ),
                  // Text(
                  //   "Enter the OTP sent to you",
                  //   style: TextStyle(
                  //     fontSize: constraints.maxWidth * 0.045,
                  //     color: Colors.grey[700],
                  //     fontWeight: FontWeight.w500,
                  //   ),
                  // ),
                  // globalvspace(0.02, h),
                  // Container(
                  //   width: constraints.maxWidth,
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //     children: [
                  //       Number_Block(height: constraints.maxHeight),
                  //       Number_Block(height: constraints.maxHeight),
                  //       Number_Block(height: constraints.maxHeight),
                  //       Number_Block(height: constraints.maxHeight),
                  //       Number_Block(height: constraints.maxHeight),
                  //     ],
                  //   ),
                  // ),
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
                  // globalvspace(0.08, h),
                  Text(
                    "OTP sent",
                    style: TextStyle(
                      fontSize: constraints.maxWidth * 0.065,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Enter the OTP sent to you",
                    style: TextStyle(
                      fontSize: constraints.maxWidth * 0.045,
                      color: Colors.grey[700],
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
                  globalbutton(h, w, "Verify"),
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
