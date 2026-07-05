import 'package:flutter/material.dart';
import 'screens/main_navigation.dart';

void main() {
  runApp(const PromptNestApp());
}

class PromptNestApp extends StatelessWidget {
  const PromptNestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PromptNest',
      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        useMaterial3: true,
      ),
      home: MainNavigation(),
    );
  }
}