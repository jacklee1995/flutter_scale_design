import 'package:flutter/material.dart';

import '../../size.dart';

class TextBtn extends TextButton {
  final double width;
  final double height;
  final bool disabled;

  TextBtn(
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
              TextButton.styleFrom(
                textStyle: TextStyle(
                  fontSize:
                      fontSize == null ? scaleFont(14.0) : scaleFont(fontSize),
                ),
                minimumSize: Size(
                  scaleWidth(width),
                  scaleHeight(height),
                ),
              ),
          child: child ?? Text(data),
        );
}
