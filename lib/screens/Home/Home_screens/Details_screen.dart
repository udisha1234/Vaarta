import 'package:flutter/material.dart';
import 'package:vaarta/utils/colors.dart';

class Details_screen extends StatefulWidget {
  const Details_screen({super.key});

  @override
  State<Details_screen> createState() => _Details_screenState();
}

class _Details_screenState extends State<Details_screen> {
  Widget block() {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: w * 0.015),
      child: Container(
        height: h * 0.09,
        width: h * 0.09,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [color.blue, color.blue2]),
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: color.base,
                      )),
                  Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.info_outline_rounded,
                        color: color.base,
                      ))
                ],
              ),
              // SizedBox(height: h*0.02,),
              Padding(
                padding: EdgeInsets.symmetric(vertical: h * 0.02),
                child: Container(
                  height: h * 0.3,
                  width: w,
                  decoration: BoxDecoration(
                      gradient:
                          LinearGradient(colors: [color.blue, color.blue2]),
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [block(), block(), block(), block()],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: h * 0.02),
                child: Row(
                  children: [
                    Text(
                      "Mercedes SL \n63 AMG",
                      style: TextStyle(
                          fontSize: 25,
                          color: color.base,
                          fontWeight: FontWeight.w300),
                    ),
                    Spacer(),
                    Container(
                      height: h * 0.05,
                      width: w * 0.3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: color.text)),
                      child: Center(
                          child: Text(
                        "2500 AED/day",
                        style: TextStyle(
                            color: color.base,
                            fontSize: 14,
                            fontWeight: FontWeight.w300),
                      )),
                    )
                  ],
                ),
              ),
              Text(
                "The Mercedes SL 63 AMG is a sports car created using advanced technologies that have made it incredibly fast and powerful.",
                style: TextStyle(
                    color: color.base,
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    wordSpacing: 1),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: h * 0.01),
                child: Divider(
                  color: color.text,
                ),
              ),
              Text(
                "Specifications",
                style: TextStyle(
                    color: color.base,
                    fontSize: 18,
                    fontWeight: FontWeight.w300),
              ),
              // Spacer(),
              // Container(
              //   height: h*0.07,
              //   width: w,
              //   color: color.blue,
              // ),
              Spacer(),
              Container(
                height: h*0.07,
                width: w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFF314FF6)
                ),
                child: Center(child: Text("Book Now" , style: TextStyle(
                  color: color.base , fontSize: 18 , fontWeight: FontWeight.w300
                ),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
