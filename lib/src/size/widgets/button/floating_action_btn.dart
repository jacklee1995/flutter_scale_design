import 'package:flutter/material.dart';
import '../../size.dart';

/// 自定义的 FloatingActionButton 类，它扩展了 Flutter 的 FloatingActionButton 类。
/// 它添加了 `size` 和 `disabled` 参数，并在构造函数中使用 `scaleHeight`、`scaleWidth` 和 `scaleFont` 函数处理样式中的尺寸问题。
class FloatingActionBtn extends FloatingActionButton {
  /// 按钮尺寸
  final double size;

  /// 控制按钮是否禁用
  final bool disabled;

  // 默认构造函数。
  /// 当 `disabled` 为 `true` 时，按钮的 `onPressed` 回调会被设置为 `null`，使得按钮处于禁用状态
  FloatingActionBtn({
    super.key,
    super.child,
    super.tooltip,
    VoidCallback? onPressed,
    super.mouseCursor,
    super.isExtended,
    super.foregroundColor,
    super.backgroundColor,
    super.focusColor,
    super.hoverColor,
    super.splashColor,
    super.heroTag = const _DefaultHeroTag(),
    double? elevation,
    double? focusElevation,
    double? hoverElevation,
    double? highlightElevation,
    double? disabledElevation,
    required this.size,
    this.disabled = false,
    ShapeBorder? shape,
    super.clipBehavior,
    super.focusNode,
    super.autofocus,
    super.materialTapTargetSize,
    bool super.enableFeedback = true,
  }) : super(
          onPressed: disabled ? null : onPressed,
          elevation: disabled ? 0 : scaleHeight(elevation!),
          focusElevation: scaleHeight(focusElevation!),
          hoverElevation: scaleHeight(hoverElevation!),
          highlightElevation: scaleHeight(highlightElevation!),
          disabledElevation: scaleHeight(disabledElevation!),
          shape: shape ??
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(scaleWidth(size)),
              ),
        );
}

/// `_DefaultHeroTag` 类用于为 `FloatingActionButton` 提供默认的 hero tag。
/// Hero tag 在 Flutter 的 Hero 动画中使用，用于标识动画的开始和结束位置的 widget。
class _DefaultHeroTag {
  /// 默认构造函数。
  const _DefaultHeroTag();

  /// 重写 `toString` 方法，返回默认的 hero tag 字符串。
  @override
  String toString() => '<default FloatingActionButton tag>';
}
