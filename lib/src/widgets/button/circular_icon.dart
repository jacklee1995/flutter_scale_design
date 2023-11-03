import 'package:flutter/material.dart';

class CircularIcon extends StatelessWidget {
  final Function? onTap;
  final Color backgroundColor;
  final double size;
  final Widget child;
  final double padding;
  final double margin;

  const CircularIcon(
    this.child, {
    Key? key,
    this.onTap,
    this.backgroundColor = const Color(0xFFF5F6F9),
    this.size = 40.0,
    this.padding = 0,
    this.margin = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
      },
      borderRadius: BorderRadius.circular(size / 2),
      child: Ink(
        decoration: BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.circle,
        ),
        child: Container(
          padding: EdgeInsets.all(padding),
          margin: EdgeInsets.all(margin),
          height: size,
          width: size,
          child: child,
        ),
      ),
    );
  }
}
