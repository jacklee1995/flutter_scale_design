import 'package:flutter/material.dart';

import '../../size.dart';

class IconBtn extends IconButton {
  IconBtn({
    super.key,
    required IconData icon,
    super.splashRadius,
    super.focusColor,
    super.hoverColor,
    super.highlightColor,
    super.splashColor,
    super.disabledColor,
    VoidCallback? onPressed,
    super.focusNode,
    super.autofocus,
    super.tooltip,
    super.constraints,
    super.isSelected,
    super.selectedIcon,
    ButtonStyle? style,
    Color? backgroundColor,
    Color? foregroundColor,
    Color? overlayColor,
    Color? shadowColor,
    Color? surfaceTintColor,
    double? elevation,
    EdgeInsetsGeometry? padding,
    side,
    shape,
    fixedSize,
    maximumSize,
    double? size,
    super.color,
    bool disabled = false,
    EdgeInsetsGeometry? btnPadding,
    textStyle,
    double? fontSize,
  }) : super(
          icon: Icon(icon),
          onPressed: disabled ? null : onPressed,
          style: style ??
              ElevatedButton.styleFrom(
                backgroundColor: backgroundColor,
                foregroundColor: foregroundColor,
                shadowColor: shadowColor,
                surfaceTintColor: surfaceTintColor,
                // 禁用时无海拔
                elevation: disabled ? 0 : 6,
                textStyle: textStyle ??
                    TextStyle(
                      fontSize: fontSize == null
                          ? scaleFont(14.0)
                          : scaleFont(fontSize),
                    ),
                padding: btnPadding,
                // 转换为 scale 尺寸
                minimumSize: Size(
                  scaleFont(size ?? scaleFont(14.0)),
                  scaleFont(size ?? scaleFont(14.0)),
                ),
                fixedSize: fixedSize,
                maximumSize: maximumSize,
                side: side,
                shape: shape ??
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
              ),
          iconSize: size == null ? scaleFont(24.0) : scaleFont(size),
        );
}
