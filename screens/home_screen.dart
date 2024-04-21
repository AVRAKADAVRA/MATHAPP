import 'package:flutter/material.dart';
import '../levels/level_button.dart';
import 'level_manager.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home_screen';

  @override
  Widget build(BuildContext context) {
    final LevelManager levelManager = LevelManager();

    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME'),
        centerTitle: true,
        backgroundColor: Colors.green,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/img_1.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                final int level = index + 1;
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: FutureBuilder<bool>(
                    future: levelManager.isNextLevelUnlocked(level),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const CircularProgressIndicator();
                      }
                      final bool isUnlocked = snapshot.data ?? false;
                      return LevelButton(level: level, isUnlocked: isUnlocked);
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
