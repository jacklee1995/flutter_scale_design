import 'package:flutter/material.dart';
import 'package:scale_design/src/size.dart';

/// 光影按钮
class ShinyButton extends _ShinyButton {
  ShinyButton({
    Widget? child,
    List<Color> colors = const [
      Color.fromARGB(255, 112, 183, 255),
      Color.fromARGB(255, 0, 49, 81),
      Color.fromARGB(255, 112, 183, 255),
    ],
    double width = 200,
    double height = 50,
    double borderRadius = 10,
    VoidCallback? onPressed,
    double elevation = 15.0,
    bool disabled = false,
  }) : super(
          child: child,
          colors: colors,
          width: scaleWidth(width),
          height: scaleHeight(height),
          borderRadius: borderRadius,
          onPressed: disabled ? null : onPressed,
          elevation: elevation,
          disabled: disabled,
        );
}

class _ShinyButton extends StatefulWidget {
  final List<Color> colors;
  final Widget? child;
  final double width;
  final double height;
  final double borderRadius;
  final VoidCallback? onPressed;
  final double elevation;
  final bool disabled;

  _ShinyButton({
    required this.child,
    required this.onPressed,
    required this.width,
    required this.height,
    required this.borderRadius,
    required this.elevation,
    required this.disabled,
    required this.colors,
  });

  @override
  _ShinyButtonState createState() => _ShinyButtonState();
}

class _ShinyButtonState extends State<_ShinyButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  double _offset = 0.0; // 新增状态变量

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    )..repeat();
    _animation = TweenSequence<double>([
      TweenSequenceItem<double>(
        tween: Tween<double>(begin: 0, end: 1),
        weight: 50,
      ),
      TweenSequenceItem<double>(
        tween: Tween<double>(begin: 1, end: 0),
        weight: 50,
      ),
    ]).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        if (widget.onPressed != null && !widget.disabled) {
          widget.onPressed!();
          setState(() {
            _offset = -5.0; // 点击时向上移动5个单位
          });
        }
      },
      onTapUp: (details) {
        setState(() {
          _offset = 0.0; // 松开时恢复原位置
        });
      },
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Transform.translate(
            offset: Offset(0, _offset), // 使用Transform来改变位置
            child: Material(
              elevation: widget.disabled || widget.onPressed == null
                  ? 0
                  : widget.elevation,
              color: Colors.transparent,
              child: Container(
                width: widget.width,
                height: widget.height,
                decoration: BoxDecoration(
                  color: widget.disabled || widget.onPressed == null
                      ? Colors.grey
                      : widget.colors[0],
                  borderRadius: BorderRadius.circular(widget.borderRadius),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                alignment: Alignment.center,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(widget.borderRadius),
                  child: Stack(
                    children: [
                      if (!widget.disabled && widget.onPressed != null)
                        Positioned(
                          left: -widget.width * 2 * (1 - _animation.value),
                          child: Opacity(
                            opacity: 0.8,
                            child: Container(
                              width: widget.width * 3,
                              height: widget.height,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(widget.borderRadius),
                                gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: widget.colors,
                                ),
                              ),
                            ),
                          ),
                        ),
                      Center(
                        child: widget.child,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
