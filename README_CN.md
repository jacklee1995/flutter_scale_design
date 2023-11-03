# Scale Design

**Scale Design** 库提供了用于 Flutter 管理屏幕尺寸和创建响应式布局的实用工具，可以通过此包实现应用程序的屏幕尺寸比例缩放。它包括用于按比例缩放尺寸并获取屏幕宽度和高度比例的函数。这在需要适应不同设备屏幕尺寸和方向的设计中特别有用。

## 安装

要使用此包，可以运行 app 命令：

```yaml
flutter pub add scale_design
```

这将在你的项目中自动安装最先的版本。

## 使用

### 初始化 `Scale` 类

在使用缩放函数之前，需要使用所需的标准屏幕宽度和高度值初始化 `Scale` 类。此初始化通常应在应用程序的主文件或应用程序的早期部分完成。

```dart
import 'package:flutter/material.dart';
import 'package:flutter_scale/flutter_scale.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 使用你的首选标准屏幕尺寸初始化 Scale 类。
    Scale().init(context, standardWidth, standardHeight);

    return MaterialApp(
      // 在此配置你的应用程序...
    );
  }
}
```

### 缩放函数

一旦初始化了 `Scale` 类，就可以使用提供的缩放函数根据屏幕大小调整布局。例如，要缩放高度值：

```dart
double scaledHeight = scaleHeight(50); // 根据屏幕大小缩放高度
```

类似地，你可以按比例缩放宽度、获取屏幕宽度或高度的比例，并自定义布局以响应不同的设备。

```dart
double scaledWidth = scaleWidth(100); // 根据屏幕大小缩放宽度
double 屏幕宽度的三分之一 = perWidth(3); // 获取屏幕宽度的三分之一
double 屏幕高度的五分之一 = perHeight(5); // 获取屏幕高度的五分之一
```

## 示例

以下是使用 `flutter_scale` 包创建响应式布局的示例：

```dart
import 'package:flutter/material.dart';
import 'package:flutter_scale/flutter_scale.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 使用你的首选标准屏幕尺寸初始化 Scale 类。
    Scale().init(context, 375.0, 812.0);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('响应式布局示例'),
        ),
        body: Center(
          child: Container(
            width: scaleWidth(200), // 缩放后的宽度
            height: scaleHeight(100), // 缩放后的高度
            color: Colors.blue,
            child: Center(
              child: Text(
                '响应式文本',
                style: TextStyle(
                  fontSize: scaleWidth(16), // 缩放后的字体大小
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
```

在此示例中，布局尺寸和字体大小按比例缩放以适应当前屏幕大小，从而创建了响应式设计。


## 许可证

此包是开源的，根据 [MIT 许可证](LICENSE) 提供。

请随意在你的Flutter项目中使用它，欢迎在[GitHub存储库](https://github.com/jacklee1995/flutter_scale_design)上贡献或提交问题。
