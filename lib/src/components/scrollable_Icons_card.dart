import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scale_design/scale_design.dart';

/// Widget class for displaying a set of horizontally scrolling icon cards.
/// 用于显示一组横向滚动的图标卡片的 Widget 类
class ScrollableIconsCard extends StatefulWidget {
  /// List of icon card data, including the image, title, and optional callback for each icon.
  /// 图标卡片数据列表，包括每个图标的图片、标题和可选的回调方法
  final List<Map<String, dynamic>> datas;

  /// Number of units per column, default is 3.
  /// 每一列的单元数量，默认为3
  final int amount;

  /// Width of the slider rail, default is 80.
  /// 滑槽宽度，默认为80
  final double spoutWidth;

  /// Width of the slider button, default is 40.
  /// 滑块宽度，默认为40
  final double sliderWidth;

  /// Height of the slider rail and button, default is 7.
  /// 滑槽和滑块的高度，默认为7
  final double sliderHeight;

  /// Color of the slider rail, default is Color.fromARGB(255, 183, 183, 183).
  /// 滑槽的颜色，默认为 Color.fromARGB(255, 183, 183, 183)
  final Color spoutColor;

  /// Color of the slider button, default is Color.fromARGB(255, 255, 134, 13).
  /// 滑块的颜色，默认为 Color.fromARGB(255, 255, 134, 13)
  final Color sliderColor;

  /// Creates an ScrollableIconsCard instance.
  /// 创建一个 ScrollableIconsCard 实例
  const ScrollableIconsCard({
    super.key,
    required this.datas,
    this.amount = 2,
    this.spoutWidth = 80,
    this.sliderWidth = 40,
    this.sliderHeight = 7,
    this.spoutColor = const Color.fromARGB(255, 183, 183, 183),
    this.sliderColor = const Color.fromARGB(255, 255, 134, 13),
  });

  @override
  State<ScrollableIconsCard> createState() => ScrollableIconsCardState();
}

class ScrollableIconsCardState extends State<ScrollableIconsCard> {
  final ScrollController _scrollController = ScrollController();

  /// The scroll percentage used to update the slider button position.
  /// 用于更新滑块位置的滚动百分比
  double scrollPercentage = 0.0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      // Get the position of the scroll bar's head.
      // 获取滚动条头部的位置
      double scrollPosition = _scrollController.position.pixels;
      // Get the maximum range value of scrollable pixels.
      // 获取可滚动像素的最大范围值
      double maxScrollExtent = _scrollController.position.maxScrollExtent;

      // Calculate the scroll percentage to update the slider button position.
      // 计算滚动百分比，用于更新滑块位置
      setState(() {
        scrollPercentage = scrollPosition / maxScrollExtent;
      });
    });
  }

  @override
  void deactivate() {
    super.deactivate();
    _scrollController.dispose();
  }

  /// Split a list into multiple sub-lists, each containing n elements.
  /// 将一个列表拆分为多个子列表，每个子列表包含 n 个元素
  List<List<T>> splitList<T>(List<T> list, int n) {
    List<List<T>> dividedList = [];
    for (int i = 0; i < list.length; i += n) {
      dividedList
          .add(list.sublist(i, i + n > list.length ? list.length : i + n));
    }
    return dividedList;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.all(scaleWidth(9)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SingleChildScrollView(
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (var i in splitList(widget.datas, widget.amount))
                  buildColumn(i)
              ],
            ),
          ),
          // Progress bar, consisting of two rounded rectangles.
          // 进度条，由两个圆角矩形组成
          Stack(
            children: [
              // The long rectangle represents the slider rail.
              // 长的矩形表示滑槽
              Container(
                width: scaleWidth(widget.spoutWidth),
                height: scaleHeight(widget.sliderHeight), // Custom height
                decoration: BoxDecoration(
                  color: widget.spoutColor, // Gray
                  borderRadius: BorderRadius.circular(5), // Rounded corners
                ),
              ),
              // The short rectangle represents the scrolling progress slider.
              // 短的矩形为滚动进度的滑块
              Positioned(
                left: (scaleWidth(widget.spoutWidth) -
                        scaleWidth(widget.sliderWidth)) *
                    scrollPercentage, // Adjust the position based on the scroll percentage
                child: Container(
                  width: scaleWidth(widget.sliderWidth),
                  height: scaleHeight(widget.sliderHeight), // Custom height
                  decoration: BoxDecoration(
                    color: widget.sliderColor, // Custom indicator color
                    borderRadius: BorderRadius.circular(5), // Rounded corners
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: scaleHeight(10)),
        ],
      ),
    );
  }

  /// Build an icon-text unit.
  /// 构建图标-文字单元
  Widget _buildUnit(
    String img,
    String title,
    GestureTapCallback? onTap,
    double width,
  ) {
    return InkWell(
      onTap: () => onTap!(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: width,
            alignment: Alignment.center,
            margin: const EdgeInsets.all(6),
            child: Column(
              children: [
                // Icon part
                // 图标部分
                isURL(img)
                    ? Image.network(
                        img,
                        width: scaleWidth(30),
                        height: scaleHeight(30),
                      )
                    : SvgPicture.asset(
                        img,
                        width: scaleWidth(30),
                        height: scaleHeight(30),
                      ),
                // Text part
                // 文字部分
                SizedBox(
                  height: scaleHeight(20),
                  child: Center(
                    child: T(
                      title,
                      color: const Color.fromARGB(255, 89, 89, 89),
                      fontSize: scaleWidth(9),
                      textAlign:
                          TextAlign.center, // Center the text horizontally
                      maxLines: 1,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Build a column of (top and bottom n) icon-text units.
  /// 构建一列（上下 n 个）图标-文字单元
  buildColumn(List<Map<String, dynamic>> data) {
    double width = perWidth(6) - scaleWidth(10);
    int supplementary = widget.amount - data.length;

    return Container(
      margin: const EdgeInsets.all(9),
      width: perWidth(6) - scaleWidth(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (var i in data)
            _buildUnit(
              i['img']!,
              i['title']!,
              i['onTap']!,
              width,
            ),
          for (var j = 0; j < supplementary; j++)
            Container(
              width: width,
              margin: const EdgeInsets.all(6),
              height: scaleHeight(50),
            )
        ],
      ),
    );
  }

  bool isURL(String text) {
    final urlPattern = Uri.parse(text);
    if (urlPattern.isAbsolute) {
      return true;
    }
    return false;
  }
}
