import 'package:flutter/material.dart';
import 'home_screen.dart';

class GameScreen extends StatelessWidget {
  static const String id = 'game_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.lightBlue,
      body: HomeScreen(),
    );
  }
}
