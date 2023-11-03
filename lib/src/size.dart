import 'package:flutter/material.dart';

/// [Scale] 类用于管理屏幕尺寸和布局比例，以便在应用程序中创建响应式布局
class Scale {
  /// 媒体查询数据，包括屏幕尺寸和方向
  static MediaQueryData _mediaQueryData = const MediaQueryData();

  /// 屏幕的宽度，以逻辑像素为单位
  static double screenWidth = 0.0;

  /// 屏幕的高度，以逻辑像素为单位
  static double screenHeight = 0.0;

  /// 默认尺寸，通常用于字体大小和间距的比例计算
  static double defaultSize = 0.0;

  /// 当前屏幕的方向，可以是横向（landscape）或纵向（portrait）
  static Orientation orientation = Orientation.portrait;

  /// 标准宽度看设计师的习惯
  static double standardWidth = 812.0;

  /// 标准高度看设计师的习惯
  static double standardHeight = 375.0;

  /// 通过传递 [BuildContext] 参数来初始化 [Scale]
  ///
  /// 参数 [context]：应用程序的上下文
  void init(
    BuildContext context,
    double standardWidth,
    double standardHeight,
  ) {
    // 从当前 [BuildContext] 获取媒体查询数据
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width; // 获取宽度
    screenHeight = _mediaQueryData.size.height; // 获取高度
    orientation = _mediaQueryData.orientation; // 媒体的方向(例如，设备是横向模式还是纵向模式)
    if (standardWidth > 0 && standardHeight > 0) {
      Scale.standardWidth = standardWidth;
      Scale.standardHeight = standardHeight;
    }
  }
}

/// 根据屏幕大小获取按比例缩放的高度
///
/// 接受一个 [inputHeight] 参数，表示设计中的高度值，
/// 然后将其根据当前设备的屏幕大小按比例进行缩放，
/// 最终返回一个新的高度值
///
/// 通常，设计师会使用某个特定的高度值来创建应用程序的布局，
/// 代表了设计师在设计阶段所使用的标准布局高度
///
/// 返回值：根据屏幕大小缩放后的高度值
double scaleHeight(double inputHeight) {
  // 获取当前设备的屏幕总高度
  double screenHeight = Scale.screenHeight;

  return (inputHeight / Scale.standardHeight) * screenHeight;
}

/// 根据屏幕大小获取按比例缩放的宽度
/// Gets the scaled width according to the screen size.
///
/// 接受一个 [inputWidth] 参数，表示设计中的宽度值，
/// 然后将其根据当前设备的屏幕大小按比例进行缩放，
/// 最终返回一个新的宽度值
///
/// 返回值：根据屏幕大小缩放后的宽度值
double scaleWidth(double inputWidth) {
  // 获取当前屏幕总宽度
  double screenWidth = Scale.screenWidth;

  return (inputWidth / Scale.standardWidth) * screenWidth;
}

/// 获取屏幕宽度的 n 分之一。
/// Get 1/n of the screen width
double perWidth(double n) {
  if (n > 0) {
    return Scale.screenWidth / n;
  }
  throw Exception('Parameter n must be greater than 0.');
}

/// 获取屏幕高度的 n 分之一。
/// Get 1/n of the screen height.
double perHeight(double n) {
  if (n > 0) {
    return Scale.screenHeight / n;
  }
  throw Exception('Parameter n must be greater than 0.');
}
