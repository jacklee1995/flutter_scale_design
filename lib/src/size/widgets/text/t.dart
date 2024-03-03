import 'dart:ui' as ui;

import 'package:flutter/material.dart';

import '../../size.dart';
import 't_span.dart';

class T extends Text {
  /// 创建一个 [T] 实例，该实例继承自 [Text] 类
  /// - [data]：要显示的文本内容
  /// - [key]：控件的唯一标识符
  /// - [strutStyle]：用于确定行高的样式
  /// - [textAlign]：文本的对齐方式
  /// - [textDirection]：文本的阅读方向
  /// - [locale]：用于选择区域特定的字形的语言环境
  /// - [softWrap]：是否在换行符或空格处换行
  /// - [overflow]：如何显示超出布局盒子的文本
  /// - [textScaleFactor]：每个逻辑像素的字体像素数
  /// - [maxLines]：文本可以包含的最大行数
  /// - [semanticsLabel]：用于语义标签的文本
  /// - [textWidthBasis]：确定如何计算文本的宽度
  /// - [textHeightBehavior]：用于确定行高和字距的行为
  /// - [selectionColor]：文本选择的颜色
  /// - [inherit]：是否继承默认的文本样式
  /// - [style]：文本的样式
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
  T(
    String data, {
    Key? key,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    ui.TextHeightBehavior? textHeightBehavior,
    Color? selectionColor,
    bool inherit = true,
    TextStyle? style,
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
  }) : super(
          key: key,
          data,
          strutStyle: strutStyle,
          textAlign: textAlign,
          textDirection: textDirection,
          softWrap: softWrap,
          overflow: overflow,
          textScaleFactor: textScaleFactor,
          maxLines: maxLines,
          semanticsLabel: semanticsLabel,
          textWidthBasis: textWidthBasis,
          textHeightBehavior: textHeightBehavior,
          selectionColor: selectionColor,
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

  T.rich(
    TSpan textSpan, {
    Key? key,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    ui.TextHeightBehavior? textHeightBehavior,
    Color? selectionColor,
    bool inherit = true,
    TextStyle? style,
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
  }) : super.rich(
          textSpan,
          key: key,
          strutStyle: strutStyle,
          textAlign: textAlign,
          textDirection: textDirection,
          softWrap: softWrap,
          overflow: overflow,
          textScaleFactor: textScaleFactor,
          maxLines: maxLines,
          semanticsLabel: semanticsLabel,
          textWidthBasis: textWidthBasis,
          textHeightBehavior: textHeightBehavior,
          selectionColor: selectionColor,
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
