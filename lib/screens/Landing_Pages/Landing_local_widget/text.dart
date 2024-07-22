import 'package:flutter/material.dart';
import 'package:vaarta/utils/colors.dart';

class text extends StatelessWidget {
  final String txt ;
  text({super.key, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Text(txt, style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: color.base
          ),);
  }
}