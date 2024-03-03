import 'dart:ui' as ui;
import 'package:flutter/services.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../size.dart';

class TSpan extends TextSpan {
  /// 创建一个 [TSpan] 实例，该实例继承自 [TextSpan] 类
  /// - [text]：要显示的文本内容
  /// - [children]：此文本跨度的子级
  /// - [style]：应用于此文本跨度及其子级的样式
  /// - [recognizer]：用于此文本跨度的手势识别器
  /// - [mouseCursor]：当鼠标位于此文本跨度上时的光标
  /// - [onEnter]：当鼠标进入此文本跨度时的回调
  /// - [onExit]：当鼠标离开此文本跨度时的回调
  /// - [semanticsLabel]：用于此文本跨度的语义标签
  /// - [locale]：用于选择区域特定的字形的语言环境
  /// - [spellOut]：是否将此文本跨度拼写出来
  /// - [inherit]：是否继承默认的文本样式
  /// - [color]：文本的颜色
  /// - [backgroundColor]：文本的背景颜色
  /// - [fontSize]：文本的字体大小，会被 `scaleFont` 函数进行缩放
  /// - [fontWeight]：文本的字体粗细
  /// - [fontStyle]：文本的字体样式
  /// - [letterSpacing]：字母之间的空间
  /// - [wordSpacing]：单词之间的空间
  /// - [textBaseline]：用于对齐文本的基线
  /// - [height]：文本的行高，会被 `scaleFont` 函数进行缩放
  /// - [leadingDistribution]：行间距的分布方式
  /// - [foreground]：文本的前景色
  /// - [background]：文本的背景色
  /// - [shadows]：文本的阴影
  /// - [fontFeatures]：字体的特性
  /// - [fontVariations]：字体的变体
  /// - [decoration]：文本的装饰
  /// - [decorationColor]：装饰的颜色
  /// - [decorationStyle]：装饰的样式
  /// - [decorationThickness]：装饰的厚度
  /// - [debugLabel]：用于调试的标签
  /// - [fontFamily]：字体的名称
  /// - [fontFamilyFallback]：备用的字体名称
  /// - [package]：字体资源所在的包
  /// - [overflow]：如何显示超出布局盒子的文本
  TSpan({
    String? text,
    List<InlineSpan>? children,
    TextStyle? style,
    GestureRecognizer? recognizer,
    MouseCursor? mouseCursor,
    PointerEnterEventListener? onEnter,
    PointerExitEventListener? onExit,
    String? semanticsLabel,
    Locale? locale,
    bool? spellOut,
    bool inherit = true,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    ui.TextLeadingDistribution? leadingDistribution,
    Paint? foreground,
    Paint? background,
    List<ui.Shadow>? shadows,
    List<ui.FontFeature>? fontFeatures,
    List<ui.FontVariation>? fontVariations,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    String? fontFamily,
    List<String>? fontFamilyFallback,
    String? package,
    TextOverflow? overflow,
  }) : super(
          text: text,
          children: children,
          recognizer: recognizer,
          mouseCursor: mouseCursor,
          onEnter: onEnter,
          onExit: onExit,
          semanticsLabel: semanticsLabel,
          locale: locale,
          spellOut: spellOut,
          style: style ??
              TextStyle(
                inherit: inherit,
                color: color ?? Colors.black,
                backgroundColor: backgroundColor,
                fontSize:
                    fontSize == null ? scaleFont(14.0) : scaleFont(fontSize),
                fontWeight: fontWeight,
                fontStyle: fontStyle,
                letterSpacing: letterSpacing,
                wordSpacing: wordSpacing,
                textBaseline: textBaseline,
                height: height == null ? scaleFont(1.0) : scaleFont(height),
                leadingDistribution: leadingDistribution,
                locale: locale,
                foreground: foreground,
                background: background,
                shadows: shadows,
                fontFeatures: fontFeatures,
                fontVariations: fontVariations,
                decoration: decoration,
                decorationColor: decorationColor,
                decorationStyle: decorationStyle,
                decorationThickness: decorationThickness,
                debugLabel: debugLabel,
                fontFamily: fontFamily,
                fontFamilyFallback: fontFamilyFallback,
                package: package,
                overflow: overflow,
              ),
        );
}
