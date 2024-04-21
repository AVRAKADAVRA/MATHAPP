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
import 'level_9.dart';

class LevelButton extends StatelessWidget {
  const LevelButton({
    Key? key,
    required this.level,
    required this.isUnlocked,
  }) : super(key: key);

  final int level;
  final bool isUnlocked;

  bool isLevelAvailable() {
    return true;
  }

  @override
  Widget build(BuildContext context) {
    String buttonName = '';
    switch (level) {
      case 1:
        buttonName = 'Addition Integers with Like sign';
        break;
      case 2:
        buttonName = 'Addition of Integers with Unlike signs';
        break;
      case 3:
        buttonName = 'Subtraction of Integers with Like signs';
        break;
      case 4:
        buttonName = 'Subtraction of Integers with Unlike signs';
        break;
      case 5:
        buttonName = 'Addition and Subtraction of Integers';
        break;
      case 6:
        buttonName = 'Multiplication of Integers with Like signs';
        break;
      case 7:
        buttonName = 'Multiplication of Integers with Unlike signs';
        break;
      case 8:
        buttonName = 'Division of Integers with Like signs';
        break;
      case 9:
        buttonName = 'Division of Integers with Unlike signs';
        break;
      case 10:
        buttonName = 'Multiplication and Division of Integers';
        break;
      default:
        break;
    }
    return ElevatedButton(
      onPressed: () {
        if (isLevelAvailable()) {
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
            default:
              break;
          }
        }
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          Colors.blue.withOpacity(0.7),
        ),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        minimumSize: MaterialStateProperty.all<Size>(const Size(200, 50)),
      ),
      child: Text(
        buttonName,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
