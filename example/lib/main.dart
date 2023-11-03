import 'package:flutter/material.dart';
import 'package:scale_design/scale_design.dart';

import 'app/config.dart';
import 'views/loginview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // 初始化方法
  Future<void> initialization(BuildContext context) async {
    Scale().init(
      context,
      LayoutConfigs.standardWidth,
      LayoutConfigs.standardHeight,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scale Design Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FutureBuilder(
        future: initialization(context),
        builder: (context, snapshot) {
          return const MyHomePage(
            title: 'Scale Design Demo',
          );
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: T(widget.title),
      ),
      body: ListView(children: [
        ListTile(
          title: T(
            'Login Page',
            fontSize: 25,
          ),
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const LoginView(),
            ),
          ),
        ),
        ListTile(
          title: T(
            'Register Page',
            fontSize: 25,
          ),
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const LoginView(),
            ),
          ),
        ),
      ]),
    );
  }
}
