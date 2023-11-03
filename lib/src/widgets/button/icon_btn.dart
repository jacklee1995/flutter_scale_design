import 'package:flutter/material.dart';

import '../../size.dart';

// class SIcon extends Icon {
//   SIcon(
//     IconData? icon, {
//     Key? key,
//     double? size,
//     double? fill,
//     double? weight,
//     double? grade,
//     double? opticalSize,
//     Color? color,
//     List<Shadow>? shadows,
//     String? semanticLabel,
//     TextDirection? textDirection,
//   }) : super(
//           icon,
//           key: key,
//           size: size ?? scaleWidth(size!),
//           fill: fill,
//           weight: weight,
//           grade: grade,
//           opticalSize: opticalSize,
//           color: color,
//           shadows: shadows,
//           semanticLabel: semanticLabel,
//           textDirection: textDirection,
//         );
// }

class IconBtn extends IconButton {
  final double width;
  final double height;
  final bool disabled;

  IconBtn({
    Key? key,
    double? splashRadius,
    Color? color,
    Color? focusColor,
    Color? hoverColor,
    Color? highlightColor,
    Color? splashColor,
    Color? disabledColor,
    required VoidCallback? onPressed,
    FocusNode? focusNode,
    bool autofocus = false,
    String? tooltip,
    BoxConstraints? constraints,
    bool? isSelected,
    Widget? selectedIcon,
    required Icon icon,
    ButtonStyle? style,
    Color? backgroundColor,
    Color? foregroundColor,
    Color? overlayColor,
    Color? shadowColor,
    Color? surfaceTintColor,
    double? elevation,
    EdgeInsetsGeometry? padding,
    required this.width,
    required this.height,
    this.disabled = false,
    fixedSize,
    maximumSize,
    iconColor,
    double? iconSize,
    side,
    shape,
    MouseCursor? mouseCursor,
    VisualDensity? visualDensity,
    tapTargetSize,
    animationDuration,
    bool? enableFeedback,
    AlignmentGeometry? alignment,
    splashFactory,
    EdgeInsetsGeometry? btnPadding,
    textStyle,
    double? fontSize,
  }) : super(
          key: key,
          iconSize: iconSize,
          visualDensity: visualDensity,
          padding: padding,
          alignment: alignment,
          splashRadius: splashRadius,
          color: color,
          focusColor: focusColor,
          hoverColor: hoverColor,
          highlightColor: highlightColor,
          splashColor: splashColor,
          disabledColor: disabledColor,
          // 禁用时，事件失效
          onPressed: disabled ? null : onPressed,
          mouseCursor: mouseCursor,
          focusNode: focusNode,
          autofocus: autofocus,
          tooltip: tooltip,
          enableFeedback: enableFeedback,
          constraints: constraints,
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
                          ? scaleHeight(14.0)
                          : scaleHeight(fontSize),
                    ),
                padding: btnPadding,
                // 转换为 scale 尺寸
                minimumSize: Size(
                  scaleWidth(width),
                  scaleHeight(height),
                ),
                fixedSize: fixedSize,
                maximumSize: maximumSize,
                side: side,
                shape: shape ??
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
              ),
          isSelected: isSelected,
          selectedIcon: selectedIcon,
          icon: icon,
        );
}
