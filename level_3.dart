import 'package:flutter/material.dart';

class LevelPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Level 3'),
          centerTitle: true
      ),
      backgroundColor: Colors.blue,
      body: Center(
        child: Text('This is Level 3'),
      ),
    );
  }
}