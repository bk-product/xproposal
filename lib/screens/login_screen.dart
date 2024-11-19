import 'package:flutter/material.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/captcha_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  void _refreshCaptcha() {
    debugPrint("CAPTCHA refreshed!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CustomTextField(
              label: 'Username',
              hint: 'Enter your Tax ID or National ID',
            ),
            const SizedBox(height: 16),
            const CustomTextField(
              label: 'Password',
              hint: 'Enter your password',
              isPassword: true,
            ),
            const SizedBox(height: 16),
            CaptchaWidget(
              onRefresh: _refreshCaptcha,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Login Successful')),
                );
              },
              child: const Text('Login'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/reset');
              },
              child: const Text('Forgot Password?'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/create');
              },
              child: const Text('Create Account'),
            ),
          ],
        ),
      ),
    );
  }
}
