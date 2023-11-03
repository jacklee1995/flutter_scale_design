import 'package:flutter/material.dart';
import 'package:scale_design/scale_design.dart';

class SubmitButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  final double width;
  final double height;
  final double size;
  final Color? color;

  const SubmitButton(
    this.text, {
    super.key,
    this.onPressed,
    this.width = 320.0,
    this.height = 49.0,
    this.size = 18.0,
    this.color = Colors.amber,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedBtn(
      text,
      onPressed: onPressed,
      width: width,
      height: height,
      fontSize: size,
      backgroundColor: color,
    );
  }
}
