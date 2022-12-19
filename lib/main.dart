import 'package:flutter/material.dart';
import 'package:flutter_olshop/profile.dart';
import 'package:flutter_olshop/screen/login_screen.dart';
import 'package:flutter_olshop/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreenPage(),
    );
  }
}
