import 'package:flutter/material.dart';
import 'package:vaarta/utils/colors.dart';

class _button extends StatelessWidget {
  const _button({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Container(
      height: h * 0.07,
      width: w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: color.prim),
      child: Center(
          child: Text(
        "Next",
        style: TextStyle(color: color.base, fontSize: 18),
      )),
    );
  }
}
