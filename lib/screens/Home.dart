import 'package:flutter/material.dart';
import 'package:vaarta/utils/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: Container(
        height: h,
        width: w,
        decoration: BoxDecoration(gradient: RadialGradient(
            center: AlignmentDirectional(0, -1.5),
            focalRadius: w,
            radius: 1.1,
            // radius: w*0.1,
            colors: [color.prim, Colors.white])),
      ),
    ));
  }
}
