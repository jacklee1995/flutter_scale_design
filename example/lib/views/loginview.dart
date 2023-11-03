import 'package:flutter/material.dart';
import 'package:scale_design/scale_design.dart';

import '../widgets/font_icon.dart';
import '../widgets/share_button.dart';
import '../widgets/submit_button.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginView> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    // 这里可以添加登录逻辑，验证用户名和密码
    String username = _usernameController.text;
    String password = _passwordController.text;

    if (username == "example" && password == "password") {
      // 登录成功，可以导航到下一个页面
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      // 登录失败，显示错误消息
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: T(
              'Login failed',
              fontSize: 20,
            ),
            content: T('User name or password error.'),
            actions: <Widget>[
              ElevatedBtn(
                'OK',
                onPressed: () {
                  Navigator.of(context).pop();
                },
                width: 100,
                height: 30,
              )
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: T('Login Page'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                T(
                  'Welcome Back!',
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),
                SizedBox(height: scaleHeight(40)),
                TextFormField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                    labelText: 'User Name',
                  ),
                ),
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                  ),
                ),
                SizedBox(height: scaleHeight(80)),
                SubmitButton(
                  'Login Now',
                  onPressed: _login,
                ),
                SizedBox(height: scaleHeight(30)),
                ShareButton(
                  icon: FontIcon.alipay,
                  onPressed: () {
                    print('alipay');
                  },
                ),
                SizedBox(width: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ShareSvgButton(
                      'assets/svgs/wechart.svg',
                      onTap: () => print('wechart'),
                      margin: 3,
                      padding: 5,
                    ),
                    SizedBox(width: 30),
                    ShareSvgButton(
                      'assets/svgs/google.svg',
                      onTap: () => print('google'),
                      margin: 3,
                      padding: 5,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
