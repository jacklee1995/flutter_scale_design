import 'dart:ui' as ui;

import 'package:flutter/material.dart';

import '../../size.dart';
import './t_span.dart';

class T extends Text {
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
                fontSize: fontSize == null
                    ? scaleHeight(14.0)
                    : scaleHeight(fontSize),
                fontWeight: fontWeight,
                fontStyle: fontStyle,
                letterSpacing: letterSpacing,
                wordSpacing: wordSpacing,
                textBaseline: textBaseline,
                height: height == null ? scaleHeight(1.0) : scaleHeight(height),
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
                fontSize: fontSize == null
                    ? scaleHeight(14.0)
                    : scaleHeight(fontSize),
                fontWeight: fontWeight,
                fontStyle: fontStyle,
                letterSpacing: letterSpacing,
                wordSpacing: wordSpacing,
                textBaseline: textBaseline,
                height: height == null ? scaleHeight(1.0) : scaleHeight(height),
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
