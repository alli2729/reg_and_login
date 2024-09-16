import 'package:flutter/material.dart';
import 'package:sample_app/pages/register_page.dart';
import 'pages/login_page.dart';
import 'pages/sample.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Sample(),
      // home: RegisterPage(),
      // home: LoginPage(),
    );
  }
}
