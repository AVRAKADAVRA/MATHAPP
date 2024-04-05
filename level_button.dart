import 'package:flutter/material.dart';
import '../levels/level_1.dart';
import 'level_10.dart';
import 'level_2.dart';
import 'level_3.dart';
import 'level_4.dart';
import 'level_5.dart';
import 'level_6.dart';
import 'level_7.dart';
import 'level_8.dart';
import 'level_9.dart'; // Import other level pages as needed

class LevelButton extends StatelessWidget {
  const LevelButton({
    Key? key,
    required this.level,
    required this.userScore,
    required this.isUnlocked,
  }) : super(key: key);

  final int level;
  final int userScore;
  final bool isUnlocked;

  bool isLevelAvailable() {
    // Level 1 is always available
    if (level == 1) {
      return true;
    }
    // Level 2 is available if the user score on level 1 is perfect (10/10)
    // and level 1 is unlocked
    return level == 2 && userScore == 10 && isUnlocked;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () {
            // Check if the level is available
            if (isLevelAvailable()) {
              // Navigate to the selected level page
              switch (level) {
                case 1:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LevelPage1(),
                    ),
                  );
                  break;
                case 2:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LevelPage2(),
                    ),
                  );
                  break;
                case 3:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LevelPage3(),
                    ),
                  );
                  break;
                case 4:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LevelPage4(),
                    ),
                  );
                  break;
                case 5:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LevelPage5(),
                    ),
                  );
                  break;
                case 6:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LevelPage6(),
                    ),
                  );
                  break;
                case 7:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LevelPage7(),
                    ),
                  );
                  break;
                case 8:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LevelPage8(),
                    ),
                  );
                  break;
                case 9:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LevelPage9(),
                    ),
                  );
                  break;
                case 10:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LevelPage10(),
                    ),
                  );
                  break;
              // Add more cases for other levels as needed
                default:
                // Handle default case
                  break;
              }
            } else {
              // Show a message indicating the level is locked
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Level Locked'),
                    content: const Text('You need a perfect score (10/10) on the previous level to unlock this level.'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('OK'),
                      ),
                    ],
                  );
                },
              );
            }
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            minimumSize: MaterialStateProperty.all<Size>(const Size(200, 50)),
          ),
          child: Text(
            'Level $level',
            style: const TextStyle(color: Colors.white),
          ),
        ),
        SizedBox(width: 10), // Adjust the spacing as needed
        Text(
          'Score: $userScore', // Display userScore beside the button
          style: TextStyle(fontSize: 16), // Adjust the font size as needed
        ),
      ],
    );
  }
}