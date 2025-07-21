import 'package:flutter/material.dart';
import 'package:navigation_tryout/likes.dart';
import 'package:navigation_tryout/news.dart';
import 'package:navigation_tryout/profile.dart';

class AppHome extends StatefulWidget {
  const AppHome({super.key});

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  int currentIndex = 0;
  List<Widget> screens = [Likes(), News(), Profile()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("AppHome")),
        body: Center(child: Text('Hello World!')),
      ),
    );
  }
}
