import 'package:flutter/material.dart';
import 'package:vaarta/utils/colors.dart';

class List_View extends StatefulWidget {
  const List_View({super.key});

  @override
  State<List_View> createState() => _List_ViewState();
}

class _List_ViewState extends State<List_View> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: h * 0.005),
      child: Container(
        height: h * 0.15,
        width: w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient:
                LinearGradient(colors: [Color(0xFF252A37), Color(0xFF21283B)])),
        child: Row(
          children: [
            SizedBox(width: w*0.04,),
            Container(
              height: h*0.11,
              width: h*0.11,
              decoration: BoxDecoration(
                color: color.prim,
                borderRadius: BorderRadius.circular(10)
              ),
            )
          ],
        ),
      ),
    );
  }
}
