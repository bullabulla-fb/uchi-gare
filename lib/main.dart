import 'package:flutter/material.dart';
import 'screens/main_screen.dart';

void main() {
  runApp(const UchiGareApp());
}

class UchiGareApp extends StatelessWidget {
  const UchiGareApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'うちのガレージに入るんカー？',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}
