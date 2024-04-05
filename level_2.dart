import 'package:flutter/material.dart';

class LevelPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Level 2'),
          centerTitle: true
      ),
      backgroundColor: Colors.blue,
      body: Center(
        child: Text('This is Level 2'),
      ),
    );
  }
}