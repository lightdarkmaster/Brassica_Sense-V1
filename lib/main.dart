import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'pages/analyticspage.dart';
import 'pages/chatbot.dart';
import 'pages/homepage.dart';
import 'pages/capturepage.dart';
import 'pages/diagnosepage.dart';

void main() => runApp(const MaterialApp(
      home: Homepage(),
      debugShowCheckedModeBanner: false,
    ));

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<Homepage> {
  int _page = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0), // Set your desired height here
        child: AppBar(
          title: const Text(
            "Brassica Sense",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.lightGreen,
            ),
          ),
          backgroundColor: Colors.white,
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 60.0,
        items: const <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: Colors.lightGreen,
          ),
          Icon(
            Icons.health_and_safety,
            size: 30,
            color: Colors.lightGreen,
          ),
          Icon(
            Icons.photo_camera,
            size: 30,
            color: Colors.lightGreen,
          ),
          Icon(
            Icons.analytics,
            size: 30,
            color: Colors.lightGreen,
          ),
          Icon(
            Icons.chat_rounded,
            size: 30,
            color: Colors.lightGreen,
          ),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(198, 209, 226, 202),
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: getPage(_page),
    );
  }

  Widget getPage(int page) {
    switch (page) {
      case 0:
        return const HomeWidget();
      case 1:
        return const SafetyWidget();
      case 2:
        return const CameraWidget();
      case 3:
        return const AnalyticsWidget();
      case 4:
        return const ChatWidget();
      default:
        return Container(); // Default page, you can replace it with another widget.
    }
  }
}
