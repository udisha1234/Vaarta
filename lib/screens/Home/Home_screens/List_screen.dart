import 'package:flutter/material.dart';
import 'package:vaarta/screens/Home/Home_local_widgets/ListView.dart';
import 'package:vaarta/utils/colors.dart';

class List_screen extends StatefulWidget {
  const List_screen({super.key});

  @override
  State<List_screen> createState() => _List_screenState();
}

class _List_screenState extends State<List_screen> {
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
              Padding(
                padding: EdgeInsets.symmetric(vertical: h*0.01),
                child: Text(
                  "Brand Name",
                  style: TextStyle(
                      color: color.base,
                      fontSize: 20,
                      fontWeight: FontWeight.w300),
                ),
              ),
              List_View(),
              List_View(),
              List_View(),
              
            ],
          ),
        ),
      ),
    );
  }
}
