import 'package:flutter/material.dart';

class text extends StatelessWidget {
  final String txt ;
  text({super.key, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Text(txt, style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),);
  }
}