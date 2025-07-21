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
  final List<Widget> screens = [Likes(), News(), Profile()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("MyApp")),
          backgroundColor: Color.fromRGBO(205, 220, 57, 1),
        ),
        body: screens[currentIndex],
        bottomNavigationBar: NavigationBar(
          backgroundColor: Color.fromRGBO(205, 220, 57, 1),
          labelTextStyle: WidgetStateTextStyle.resolveWith((Set states) {
            final Color color = states.contains(WidgetState.selected)
                ? Color.fromRGBO(33, 74, 44, 1)
                : Colors.black;
            return TextStyle(color: color);
          }),
          elevation: 0,

          indicatorColor: Color.fromRGBO(33, 74, 44, 1),
          onDestinationSelected: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          selectedIndex: currentIndex,
          destinations: const <Widget>[
            NavigationDestination(
              icon: Icon(Icons.home_outlined, color: Colors.white),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Badge(
                label: Text('5'),
                textColor: Color(0xff000000),
                backgroundColor: Color.fromARGB(255, 255, 196, 0),
                child: Icon(
                  Icons.newspaper,
                  color: Color.fromRGBO(33, 74, 44, 1),
                ),
              ),
              label: 'News',
            ),
            NavigationDestination(
              icon: Icon(Icons.favorite, color: Color.fromRGBO(33, 74, 44, 1)),
              label: 'Likes',
            ),
            NavigationDestination(
              icon: Icon(Icons.person_2, color: Color.fromRGBO(33, 74, 44, 1)),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
