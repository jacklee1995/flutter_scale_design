import 'package:flutter/material.dart';
import 'package:scale_design/scale_design.dart';

import '../widgets/share_button.dart';
import '../widgets/submit_button.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterView> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  checkUsernameExists(String username) {
    return false;
  }

  void _register() {
    // 这里可以添加注册逻辑，验证用户名和密码
    String username = _usernameController.text;
    String password = _passwordController.text;
    String confirmPassword = _confirmPasswordController.text;

    // 假设我们有一个函数checkUsernameExists，它会检查用户名是否已经被使用
    if (checkUsernameExists(username)) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: T(
              'Registration failed',
              fontSize: 20,
            ),
            content: T('Username already exists.'),
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
    } else if (password == confirmPassword) {
      // 注册成功，可以导航到下一个页面
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      // 注册失败，显示错误消息
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: T(
              'Registration failed',
              fontSize: 20,
            ),
            content: T('Passwords do not match.'),
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
        title: T('Register Page'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: scaleFont(60),
                  width: scaleFont(60),
                  child: const CircleAvatar(
                    child: Icon(
                      Icons.account_circle,
                      size: 56,
                    ),
                  ),
                ),
                SizedBox(height: scaleHeight(40)),
                T(
                  'Welcome!',
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
                TextFormField(
                  controller: _confirmPasswordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Confirm Password',
                  ),
                ),
                SizedBox(height: scaleHeight(80)),
                SubmitButton(
                  'Register Now',
                  onPressed: _register,
                ),
                SizedBox(height: scaleHeight(30)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ShareSvgButton(
                      'assets/svgs/wechart.svg',
                      onTap: () => print('wechart'),
                      margin: 3,
                      padding: 5,
                    ),
                    const SizedBox(width: 30),
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
