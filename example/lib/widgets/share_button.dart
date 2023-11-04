import 'package:flutter/material.dart';
import 'package:scale_design/scale_design.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShareButton extends StatelessWidget {
  final IconData icon;
  final Function()? onPressed;

  const ShareButton({super.key, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconBtn(
      icon: icon,
      onPressed: onPressed,
      backgroundColor: const Color.fromARGB(255, 233, 233, 233),
      size: 30,
    );
  }
}

class ShareSvgButton extends StatelessWidget {
  final String icon;
  final Function()? onTap;
  final double? padding;
  final double? margin;

  const ShareSvgButton(
    this.icon, {
    super.key,
    this.onTap,
    this.padding,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return CircularIcon(
      SvgPicture.asset(
        icon,
        width: scaleWidth(30),
        height: scaleWidth(30),
      ),
      padding: padding ?? 0,
      margin: margin ?? 0,
      onTap: onTap,
      backgroundColor: const Color.fromARGB(255, 233, 233, 233),
      size: scaleWidth(30),
    );
  }
}
