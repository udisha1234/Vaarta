import 'package:flutter/material.dart';
import 'package:vaarta/utils/colors.dart';

Widget globalbutton(double h , double w , String txt){
  return Container(
      height: h * 0.065,
      width: w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: color.blue),
      child: Center(
          child: Text(
        txt,
        style: TextStyle(color: color.base, fontSize: 18 , fontWeight: FontWeight.w500),
      )),
    );
}