import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/password_reset_screen.dart';
import 'screens/password_setup_screen.dart';
import 'screens/account_creation_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/reset': (context) => const PasswordResetScreen(),
        '/setup': (context) => const PasswordSetupScreen(),
        '/create': (context) => const AccountCreationScreen(),
      },
    );
  }
}
