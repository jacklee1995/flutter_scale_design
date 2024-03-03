import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  /// Layout for mobile devices
  final Widget? mobile;

  /// Layout for tablet devices
  final Widget? tablet;

  /// Layout for desktop devices
  final Widget? desktop;

  const Responsive({
    super.key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  });

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 650;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 900 &&
      MediaQuery.of(context).size.width >= 650;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 900;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      // If our width is greater than 900, then we consider it as a desktop device
      builder: (context, constraints) {
        if (desktop != null && constraints.maxWidth >= 900) {
          return desktop!;
        }
        // If width is less than 900 and greater than or equal to 650, we consider it as a tablet device
        else if (tablet != null && constraints.maxWidth >= 650) {
          return tablet!;
        }
        // Or less than 650, we consider it as a mobile device
        else if (mobile != null) {
          return mobile!;
        } else {
          return Container(
            decoration:
                const BoxDecoration(color: Color.fromARGB(31, 131, 0, 0)),
            child: const Text(
              'Layout Not Specified Error:\nAt least one layout content must be specified for a device.',
              style: TextStyle(color: Colors.white),
            ),
          );
        }
      },
    );
  }
}
