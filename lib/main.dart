import 'package:flutter/material.dart';
import 'package:navigation_tryout/app_home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: AppHome());
  }
}
