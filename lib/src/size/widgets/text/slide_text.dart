import 'dart:async';
import 'package:flutter/material.dart';
import '../../../../scale_design.dart';

/// [SlideText] is a widget that displays a list of text that scrolls vertically.
/// [SlideText] 是一个显示垂直滚动文本列表的小部件。
class SlideText extends StatefulWidget {
  /// The list of text to be displayed.
  /// 要显示的文本列表。
  final List<String> textList;

  /// The duration of each text display, in seconds. Default is 2 seconds.
  /// 每条文本显示的持续时间，以秒为单位。默认为2秒。
  final int duration;

  /// The font size of the text. Default is 14.
  /// 文本的字体大小。默认为14。
  final double fontSize;

  /// The height of the widget. Default is 40.
  /// 小部件的高度。默认为40。
  final double height;

  /// The scroll direction. If true, the text scrolls up. If false, the text scrolls down. Default is true.
  /// 滚动方向。如果为真，文本向上滚动。如果为假，文本向下滚动。默认为真。
  final bool isScrollUp;

  const SlideText(
    this.textList, {
    super.key,
    this.duration = 2,
    this.fontSize = 14,
    this.height = 40,
    this.isScrollUp = true,
  });

  @override
  State<SlideText> createState() => _SlideTextState();
}

class _SlideTextState extends State<SlideText> {
  late final PageController _pageController;
  late final Timer _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _timer = Timer.periodic(Duration(seconds: widget.duration), (timer) {
      if (_pageController.hasClients) {
        if (widget.isScrollUp) {
          if (_pageController.page == widget.textList.length) {
            _pageController.jumpToPage(0); // 直接跳转到第一页
          }
          _pageController.nextPage(
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
          );
        } else {
          if (_pageController.page == 0) {
            _pageController.jumpToPage(widget.textList.length); // 直接跳转到最后一页
          }
          _pageController.previousPage(
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
          );
        }
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: scaleHeight(widget.height), // 设置一个固定的高度
      child: PageView.builder(
        controller: _pageController,
        itemCount: widget.textList.length + 1, // 在列表末尾添加第一条文本
        scrollDirection: Axis.vertical, // 设置滚动方向为垂直
        itemBuilder: (context, index) {
          return Align(
            alignment: Alignment.centerLeft, // 设置文本为左对齐
            child: T(
              widget.textList[index % widget.textList.length], // 使用模运算来获取文本
              fontSize: widget.fontSize,
              fontWeight: FontWeight.bold,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          );
        },
      ),
    );
  }
}
