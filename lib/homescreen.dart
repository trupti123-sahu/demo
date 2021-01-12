import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'landing_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withBlue(200),
      body: Center(
          child: AvatarGlow(
        startDelay: Duration(milliseconds: 1000),
        glowColor: Colors.blue,
        endRadius: 90.0,
        duration: Duration(milliseconds: 2000),
        repeat: true,
        showTwoGlows: true,
        repeatPauseDuration: Duration(milliseconds: 100),
        child: Material(
            elevation: 8.0,
            shape: CircleBorder(),
            child: CircleAvatar(
              backgroundColor: Colors.grey[100],
              child: GestureDetector(
                  child: Image.asset(
                    'assets/images/imag.jpg',
                    height: 60,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LandingPage()),
                    );
                  }),
              radius: 40.0,
            )),
        shape: BoxShape.circle,
        animate: true,
        curve: Curves.fastOutSlowIn,
      )),
    );
  }
}
