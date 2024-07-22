import 'package:flutter/material.dart';
import 'package:vaarta/utils/colors.dart';

class Car_Details_Widget extends StatefulWidget {
  const Car_Details_Widget({super.key});

  @override
  State<Car_Details_Widget> createState() => _Car_Details_WidgetState();
}

class _Car_Details_WidgetState extends State<Car_Details_Widget> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Container(
      width: w,
      height: h * 0.34,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient:
              LinearGradient(colors: [Color(0xFF252A37), Color(0xFF21283B)])),
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: w * 0.05, vertical: h * 0.015),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Mercedes SL 63",
                  style: TextStyle(
                      color: color.base,
                      fontSize: 20,
                      fontWeight: FontWeight.w200),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: w * 0.01),
                  child: Container(
                    child: Center(
                        child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: w * 0.04, vertical: h * 0.01),
                      child: Row(
                        children: [
                          Text(
                            "2500 AED/day",
                            style: TextStyle(
                                color: color.base, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: color.prim),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: h * 0.015),
              child: Row(
                children: [
                  Icon(
                    Icons.emergency_outlined,
                    color: color.base,
                  ),
                  Text(
                    " 585 hp",
                    style: TextStyle(color: color.base),
                  ),
                  Spacer(),
                  Icon(
                    Icons.auto_mode_sharp,
                    color: color.base,
                  ),
                  Text(
                    " Automatic",
                    style: TextStyle(color: color.base),
                  ),
                  Spacer(),
                  Icon(
                    Icons.event_seat_sharp,
                    color: color.base,
                  ),
                  Text(
                    " 4 Seats ",
                    style: TextStyle(color: color.base),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
