import 'package:flutter/material.dart';
import '../widgets/custom_text_field.dart';

class PasswordResetScreen extends StatelessWidget {
  const PasswordResetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Password Reset')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Password Reset',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 16),
            const Text(
              'Your registered email: ays*****@example.com',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            const CustomTextField(
              label: 'Enter Full Email',
              hint: 'example@example.com',
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Password reset link sent!')),
                );
                Navigator.pushNamed(context, '/setup');
              },
              child: const Text('Reset Password'),
            ),
          ],
        ),
      ),
    );
  }
}
