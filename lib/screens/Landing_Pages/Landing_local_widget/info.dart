import 'package:flutter/material.dart';

class info extends StatelessWidget {
  final String txt ;
  info({super.key, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Text(txt, style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w300,
          ),);
  }
}