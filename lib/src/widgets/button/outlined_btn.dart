import 'package:flutter/material.dart';

import '../../size.dart';

class OutlinedBtn extends OutlinedButton {
  final double width;
  final double height;
  final bool disabled;

  OutlinedBtn(
    String data, {
    Key? key,
    Widget? child,
    VoidCallback? onPressed,
    ButtonStyle? style,
    required this.width,
    required this.height,
    this.disabled = false,
    double? fontSize,
  }) : super(
          key: key,
          onPressed: disabled ? null : onPressed,
          style: style ??
              OutlinedButton.styleFrom(
                textStyle: TextStyle(
                  fontSize: fontSize == null
                      ? scaleHeight(14.0)
                      : scaleHeight(fontSize),
                ),
                minimumSize: Size(
                  scaleWidth(width),
                  scaleHeight(height),
                ),
              ),
          child: child ?? Text(data),
        );
}
