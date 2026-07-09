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
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0,
        ),
        cardTheme: const CardThemeData(
          elevation: 4,
        ),
      ),

      home: MainNavigation(),
    );
  }
}