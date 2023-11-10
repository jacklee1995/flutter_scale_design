import 'package:flutter/material.dart';
import 'package:scale_design/scale_design.dart';

class ShinyButtonExample extends StatelessWidget {
  const ShinyButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: T(
          '光影按钮',
          fontSize: 18,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // 当仅传递 onPressed 的时候
            ShinyButton(onPressed: () {}),

            const SizedBox(height: 30),

            // 如果没有任何参数则成为禁用状态
            ShinyButton(),

            const SizedBox(height: 30),

            // 你也可以自定义圆角、颜色、子元素等参数
            ShinyButton(
              borderRadius: 20,
              colors: const [
                Color.fromARGB(255, 112, 255, 117),
                Color.fromARGB(255, 0, 81, 3),
                Color.fromARGB(255, 112, 255, 117),
              ],
              child: T(
                '自定义一些属性',
                color: Colors.amber,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              onPressed: () {
                print('Button Pressed');
              },
            ),

            const SizedBox(height: 30),

            // 使用 disabled 属性禁用按钮
            ShinyButton(
              borderRadius: 20,
              width: 300,
              colors: const [
                Color.fromARGB(255, 112, 255, 117),
                Color.fromARGB(255, 0, 81, 3),
                Color.fromARGB(255, 112, 255, 117),
              ],
              disabled: true,
              onPressed: () {},
              child: T(
                '使用 disabled 属性禁用按钮',
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            // 一个登陆按钮的示例
            ShinyButton(
              borderRadius: 60,
              width: 310,
              colors: const [
                Color.fromARGB(255, 255, 224, 112),
                Color.fromARGB(255, 220, 77, 0),
                Color.fromARGB(255, 255, 224, 112),
              ],
              onPressed: () {},
              child: T(
                '登 陆',
                color: Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
