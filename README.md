# Scale Design

The **Scale Design** library provides utilities for managing screen dimensions and creating responsive layouts in Flutter applications, allowing you to achieve screen size proportion scaling. It includes functions for scaling dimensions proportionally and obtaining screen width and height ratios. This is particularly useful when designing for different device screen sizes and orientations.

## Installation

To use this package, you can run the following command:

```yaml
flutter pub add scale_design
```

This will automatically install the latest version in your project.

## Usage

### Initialize the `Scale` Class

Before using the scaling functions, you need to initialize the `Scale` class with the desired standard screen width and height values. This initialization should typically be done in your app's main file or an early part of your application.

```dart
import 'package:flutter/material.dart';
import 'package:flutter_scale/flutter_scale.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Initialize the Scale class with your preferred standard screen dimensions.
    Scale().init(context, standardWidth, standardHeight);

    return MaterialApp(
      // Your app configuration here...
    );
  }
}
```

### Scaling Functions

Once the `Scale` class is initialized, you can use the provided scaling functions to adapt your layout based on the screen size. For example, to scale a height value:

```dart
double scaledHeight = scaleHeight(50); // Scales the height based on the screen size
```

Similarly, you can scale width, get proportions of the screen width or height, and customize your layout to be responsive to different devices.

```dart
double scaledWidth = scaleWidth(100); // Scales the width based on the screen size
double oneThirdScreenWidth = perWidth(3); // Gets one-third of the screen width
double oneFifthScreenHeight = perHeight(5); // Gets one-fifth of the screen height
```

## Example

Here's an example of using the `flutter_scale` package to create a responsive layout:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_scale/flutter_scale.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Initialize the Scale class with your preferred standard screen dimensions.
    Scale().init(context, 375.0, 812.0);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Responsive Layout Example'),
        ),
        body: Center(
          child: Container(
            width: scaleWidth(200), // Scaled width
            height: scaleHeight(100), // Scaled height
            color: Colors.blue,
            child: Center(
              child: Text(
                'Responsive Text',
                style: TextStyle(
                  fontSize: scaleWidth(16), // Scaled font size
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

In this example, the layout dimensions and font size are scaled proportionally to fit the current screen size, creating a responsive design.

## License

This package is open-source and available under the [MIT License](LICENSE).

Feel free to use it in your Flutter projects, and contributions or issues are welcome on the [GitHub repository](https://github.com/jacklee1995/flutter_scale_design).
