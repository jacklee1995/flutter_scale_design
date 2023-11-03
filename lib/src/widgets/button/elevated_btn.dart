import 'package:flutter/material.dart';

import '../../size.dart';

class ElevatedBtn extends ElevatedButton {
  final double width;
  final double height;
  final bool disabled;

  ElevatedBtn(
    String data, {
    Key? key, // 控件的唯一标识
    Widget? child, // 按钮上显示的子部件，不指定时，直接使用 data 指定的文本
    VoidCallback? onPressed, // 点击按钮时触发的回调函数
    VoidCallback? onLongPress, // 长按按钮时触发的回调函数
    ValueChanged<bool>? onHover, // 鼠标悬停在按钮上时触发的回调函数
    ValueChanged<bool>? onFocusChange, // 控件获取或失去焦点时触发的回调函数
    ButtonStyle? style, // 按钮的样式
    FocusNode? focusNode, // 控件的焦点节点
    bool autofocus = false, // 控件是否自动获取焦点
    Clip clipBehavior = Clip.none, // 控件的裁剪行为
    MaterialStatesController? statesController, // 控件的状态控制器
    Color? foregroundColor, // 前景颜色
    Color? backgroundColor, // 背景颜色
    Color? disabledForegroundColor, // 禁用状态下的前景颜色
    Color? disabledBackgroundColor, // 禁用状态下的背景颜色
    double? elevation, // 阴影高度
    EdgeInsetsGeometry? padding, // 内边距
    required this.width,
    required this.height,
    this.disabled = false,
    Size? fixedSize, // 固定尺寸
    Size? maximumSize, // 最大尺寸
    BorderSide? side, // 边框样式
    OutlinedBorder? shape, // 控件的形状
    MouseCursor? enabledMouseCursor, // 启用状态下的鼠标光标
    MouseCursor? disabledMouseCursor, // 禁用状态下的鼠标光标
    VisualDensity? visualDensity, // 视觉密度
    MaterialTapTargetSize? tapTargetSize, // 控件的点击目标尺寸
    Duration? animationDuration, // 动画时长
    bool enableFeedback = true, // 是否启用触觉反馈
    AlignmentGeometry alignment = Alignment.center, // 控件的对齐方式
    InteractiveInkFeatureFactory? splashFactory, // 控件的涟漪效果工厂
    TextStyle? textStyle, // 文本样式
    double? fontSize,
  }) : super(
          key: key,
          // 禁用时，事件失效
          onPressed: disabled ? null : onPressed,
          onLongPress: onLongPress,
          onHover: onHover,
          onFocusChange: onFocusChange,
          style: style ??
              ElevatedButton.styleFrom(
                foregroundColor: foregroundColor ?? Colors.white,
                backgroundColor:
                    backgroundColor ?? const Color.fromARGB(255, 98, 106, 239),
                disabledForegroundColor: disabledForegroundColor,
                disabledBackgroundColor: disabledBackgroundColor,
                // 禁用时无海拔
                elevation: disabled ? 0 : 6,
                textStyle: textStyle ??
                    TextStyle(
                      fontSize: fontSize == null
                          ? scaleHeight(14.0)
                          : scaleHeight(fontSize),
                    ),
                padding: padding,
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
                enabledMouseCursor: enabledMouseCursor,
                disabledMouseCursor: disabledMouseCursor,
                visualDensity: visualDensity,
                tapTargetSize: tapTargetSize,
                animationDuration: animationDuration,
                enableFeedback: enableFeedback,
                alignment: alignment,
                splashFactory: splashFactory,
              ),
          focusNode: focusNode,
          autofocus: autofocus,
          clipBehavior: clipBehavior,
          statesController: statesController,
          child: child ?? Text(data),
        );
}
