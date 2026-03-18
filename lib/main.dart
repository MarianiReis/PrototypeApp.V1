import 'package:flutter/material.dart';
import 'presentation/pages/WelcomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Protótipo App',
      home: const WelcomePage(),
    );
  }
}

