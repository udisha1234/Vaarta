import 'package:flutter/material.dart';

class Number_Block extends StatefulWidget {
  final double height;
  const Number_Block({super.key, required this.height});

  @override
  State<Number_Block> createState() => _Number_BlockState();
}

class _Number_BlockState extends State<Number_Block> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.height * 0.07,
      height: widget.height * 0.07,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(width: 0.8),
      ),
    );
  }
}
