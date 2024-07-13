import 'package:flutter/material.dart';
import 'package:vaarta/utils/colors.dart';

class button extends StatelessWidget {
  const button({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Container(
      height: w * 0.15,
      width: w * 0.15,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color.prim),
      child: Icon(
        Icons.arrow_forward_ios_rounded,
        color: color.base,
        size: 30,
      ),
    );
  }
}
