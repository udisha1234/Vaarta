import 'dart:math';

import 'package:flutter/material.dart';
import 'package:vaarta/screens/Home/Home_local_widgets/ListView.dart';
import 'package:vaarta/utils/colors.dart';

class Profile_screen extends StatefulWidget {
  const Profile_screen({super.key});

  @override
  State<Profile_screen> createState() => _Profile_screenState();
}

class _Profile_screenState extends State<Profile_screen> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: color.prim,
        body: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: w * 0.06, vertical: h * 0.02),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: color.base,
                  ),
                  Spacer(
                    flex: 9,
                  ),
                  Text(
                    "Profile",
                    style: TextStyle(
                        color: color.base,
                        fontWeight: FontWeight.w300,
                        fontSize: 24),
                  ),
                  Spacer(
                    flex: 10,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: h * 0.02),
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: color.blue2,
                  child: Icon(
                    Icons.person_2_rounded,
                    color: color.base,
                    size: 50,
                  ),
                ),
              ),
              Text(
                "Olivia Wilsion",
                style: TextStyle(
                    color: color.base,
                    fontSize: 22,
                    fontWeight: FontWeight.w200),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: h*0.008),
                child: Text(
                  "olivia123@gmial.com",
                  style: TextStyle(
                      color: color.text,
                      fontSize: 17,
                      fontWeight: FontWeight.w200),
                ),
              ),
              Text(
                "Los Angles, CA",
                style: TextStyle(
                    color: color.text,
                    fontSize: 17,
                    fontWeight: FontWeight.w200),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: h*0.015),
                child: Row(
                  children: [
                    Text(
                      "All Bookings",
                      style: TextStyle(
                          color: color.base,
                          fontSize: 20,
                          fontWeight: FontWeight.w200),
                    ),
                  ],
                ),
              ),
              List_View(),
              List_View(),
              List_View()
            ],
          ),
        ),
      ),
    );
  }
}
