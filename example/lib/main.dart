import 'package:flutter/material.dart';
import 'package:scale_design/scale_design.dart';

import 'app/configs.dart';
import 'views/basic_widget_examples.dart';
import 'views/login_view.dart';
import 'views/register_view.dart';
import 'views/scrollable_Icons_card_example.dart';
import 'views/slide_text_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Initialization method
  Future<void> initialization(BuildContext context) async {
    // Initialize screen size ratio scaling
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
        title: T(
          widget.title,
          fontSize: 20,
        ),
      ),
      body: ListView(children: [
        ListTile(
          title: T(
            'Basic Widgets Examples',
            fontSize: 20,
          ),
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const BasicWidgetExamples(),
            ),
          ),
        ),
        ListTile(
          title: T(
            'ScrollableIconsCard Example',
            fontSize: 20,
          ),
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const ScrollableIconsCardExample(),
            ),
          ),
        ),
        ListTile(
          title: T(
            'SlideTextExample Example',
            fontSize: 20,
          ),
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const SlideTextExample(),
            ),
          ),
        ),
        ListTile(
          title: T(
            'Login Page demo',
            fontSize: 20,
          ),
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const LoginView(),
            ),
          ),
        ),
        ListTile(
          title: T(
            'Register Page demo',
            fontSize: 20,
          ),
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const RegisterView(),
            ),
          ),
        ),
      ]),
    );
  }
}
