import 'package:flutter/material.dart';

import '../../size.dart';

class IconBtn extends IconButton {
  IconBtn({
    Key? key,
    required IconData icon,
    double? splashRadius,
    Color? focusColor,
    Color? hoverColor,
    Color? highlightColor,
    Color? splashColor,
    Color? disabledColor,
    VoidCallback? onPressed,
    FocusNode? focusNode,
    bool autofocus = false,
    String? tooltip,
    BoxConstraints? constraints,
    bool? isSelected,
    Widget? selectedIcon,
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
    Color? color,
    bool disabled = false,
    EdgeInsetsGeometry? btnPadding,
    textStyle,
    double? fontSize,
  }) : super(
          key: key,
          splashRadius: splashRadius,
          icon: Icon(icon),
          color: color,
          focusColor: focusColor,
          hoverColor: hoverColor,
          highlightColor: highlightColor,
          splashColor: splashColor,
          disabledColor: disabledColor,
          onPressed: disabled ? null : onPressed,
          focusNode: focusNode,
          autofocus: autofocus,
          tooltip: tooltip,
          constraints: constraints,
          isSelected: isSelected,
          selectedIcon: selectedIcon,
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
