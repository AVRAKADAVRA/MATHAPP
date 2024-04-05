import 'package:flutter/material.dart';
import '../levels/level_button.dart';
import 'level_manager.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home_screen';

  // Add a userScore property to the HomeScreen class
  final int userScore;

  // Constructor to initialize the userScore property
  const HomeScreen({Key? key, required this.userScore}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LevelManager levelManager = LevelManager();

    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME'),
        centerTitle: true,
        backgroundColor: Colors.green,
        elevation: 0,
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.more_vert),
            itemBuilder: (context) => [
              PopupMenuItem(
                child: const Text('Settings'),
                onTap: () {},
              ),
              PopupMenuItem(
                child: const Text('About'),
                onTap: () {},
              )
            ],
          )
        ],
      ),
      body: Center(
        child: ListView.builder(
          itemCount: 10, // Number of levels
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
                  // Pass the userScore to the LevelButton
                  return LevelButton(level: level, userScore: userScore, isUnlocked: isUnlocked);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
