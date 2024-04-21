import 'dart:math';
import 'package:flutter/material.dart';

class LevelPage8 extends StatefulWidget {
  @override
  _LevelPage8State createState() => _LevelPage8State();
}

class _LevelPage8State extends State<LevelPage8> {
  late List<Map<String, dynamic>> selectedProblems;
  late int _currentQuestionIndex;
  int _selectedOption = -1;
  int _score = 0;

  @override
  void initState() {
    super.initState();
    _currentQuestionIndex = 0;
    selectRandomProblems();
  }

  void selectRandomProblems() {
    final List<Map<String, dynamic>> allProblems = [
      {
        "question": "12 ÷ 4 =",
        "options": ["2", "3", "4", "5"],
        "correctIndex": 1
      },
      {
        "question": "-20 ÷ -5 =",
        "options": ["5", "4", "-4", "-5"],
        "correctIndex": 1
      },
      {
        "question": "18 ÷ 6 =",
        "options": ["4", "2", "3", "6"],
        "correctIndex": 2
      },
      {
        "question": "-36 ÷ -6 =",
        "options": ["5", "6", "-6", "-5"],
        "correctIndex": 1
      },
      {
        "question": "50 ÷ 5 =",
        "options": ["10", "9", "11", "12"],
        "correctIndex": 0
      },
      {
        "question": "-45 ÷ -9 =",
        "options": ["6", "5", "-5", "-6"],
        "correctIndex": 0
      },
      {
        "question": "28 ÷ 4 =",
        "options": ["6", "7", "8", "5"],
        "correctIndex": 1
      },
      {
        "question": "-32 ÷ -8 =",
        "options": ["3", "4", "-4", "-3"],
        "correctIndex": 1
      },
      {
        "question": "63 ÷ 7 =",
        "options": ["10", "9", "8", "7"],
        "correctIndex": 1
      },
      {
        "question": "-72 ÷ -12 =",
        "options": ["5", "6", "-6", "-5"],
        "correctIndex": 1
      },
      {
        "question": "40 ÷ 8 =",
        "options": ["4", "5", "6", "7"],
        "correctIndex": 1
      },
      {
        "question": "-54 ÷ -6 =",
        "options": ["8", "9", "-9", "-8"],
        "correctIndex": 1
      },
      {
        "question": "56 ÷ 7 =",
        "options": ["7", "8", "6", "9"],
        "correctIndex": 1
      },
      {
        "question": "-48 ÷ -8 =",
        "options": ["7", "6", "-6", "-7"],
        "correctIndex": 1
      },
      {
        "question": "99 ÷ 9 =",
        "options": ["10", "11", "12", "13"],
        "correctIndex": 1
      },
      {
        "question": "-81 ÷ -9 =",
        "options": ["10", "9", "-9", "-10"],
        "correctIndex": 1
      },
      {
        "question": "72 ÷ 8 =",
        "options": ["8", "9", "10", "11"],
        "correctIndex": 1
      },
      {
        "question": "-64 ÷ -8 =",
        "options": ["9", "8", "-8", "-9"],
        "correctIndex": 1
      },
      {
        "question": "42 ÷ 6 =",
        "options": ["6", "7", "8", "5"],
        "correctIndex": 1
      },
      {
        "question": "-90 ÷ -10 =",
        "options": ["9", "8", "-8", "-9"],
        "correctIndex": 0
      },
      {
        "question": "66 ÷ 11 =",
        "options": ["6", "7", "8", "5"],
        "correctIndex": 1
      },
      {
        "question": "-100 ÷ -20 =",
        "options": ["5", "6", "-6", "-5"],
        "correctIndex": 1
      },
      {
        "question": "54 ÷ 9 =",
        "options": ["5", "6", "7", "-8"],
        "correctIndex": 1
      },
      {
        "question": "-80 ÷ -10 =",
        "options": ["9", "8", "-8", "-9"],
        "correctIndex": 1
      },
      {
        "question": "75 ÷ 5 =",
        "options": ["15", "14", "16", "13"],
        "correctIndex": 0
      },
      {
        "question": "-88 ÷ -11 =",
        "options": ["8", "7", "-7", "-8"],
        "correctIndex": 0
      },
      {
        "question": "98 ÷ 7 =",
        "options": ["12", "14", "13", "15"],
        "correctIndex": 1
      },
      {
        "question": "-110 ÷ -10 =",
        "options": ["12", "11", "-11", "-12"],
        "correctIndex": 1
      },
      {
        "question": "36 ÷ 6 =",
        "options": ["7", "6", "5", "-6"],
        "correctIndex": 1
      },
      {
        "question": "-120 ÷ -12 =",
        "options": ["11", "10", "-10", "-11"],
        "correctIndex": 1
      },
      {
        "question": "49 ÷ 7 =",
        "options": ["6", "7", "8", "5"],
        "correctIndex": 1
      },
      {
        "question": "-64 ÷ -16 =",
        "options": ["3", "4", "-4", "-3"],
        "correctIndex": 1
      },
      {
        "question": "50 ÷ 10 =",
        "options": ["4", "5", "6", "3"],
        "correctIndex": 1
      },
      {
        "question": "-72 ÷ -9 =",
        "options": ["8", "7", "6", "8"],
        "correctIndex": 3
      },
      {
        "question": "32 ÷ 8 =",
        "options": ["3", "4", "5", "2"],
        "correctIndex": 1
      },
      {
        "question": "-100 ÷ -25 =",
        "options": ["4", "3", "-3", "-4"],
        "correctIndex": 0
      },
      {
        "question": "60 ÷ 12 =",
        "options": ["6", "5", "4", "5"],
        "correctIndex": 3
      },
      {
        "question": "-42 ÷ -7 =",
        "options": ["7", "6", "-6", "-7"],
        "correctIndex": 0
      },
      {
        "question": "70 ÷ 10 =",
        "options": ["6", "7", "8", "9"],
        "correctIndex": 1
      },
      {
        "question": "-90 ÷ -15 =",
        "options": ["5", "6", "-6", "-5"],
        "correctIndex": 1
      },
      {
        "question": "84 ÷ 12 =",
        "options": ["7", "6", "8", "9"],
        "correctIndex": 0
      },
      {
        "question": "-96 ÷ -16 =",
        "options": ["7", "6", "-6", "-7"],
        "correctIndex": 1
      },
      {
        "question": "56 ÷ 8 =",
        "options": ["8", "7", "6", "9"],
        "correctIndex": 1
      },
      {
        "question": "-120 ÷ -10 =",
        "options": ["11", "12", "-12", "-11"],
        "correctIndex": 1
      },
      {
        "question": "64 ÷ 16 =",
        "options": ["5", "4", "3", "6"],
        "correctIndex": 1
      },
      {
        "question": "-98 ÷ -14 =",
        "options": ["7", "8", "-7", "-8"],
        "correctIndex": 0
      },
      {
        "question": "36 ÷ 9 =",
        "options": ["4", "5", "3", "2"],
        "correctIndex": 1
      },
      {
        "question": "-144 ÷ -12 =",
        "options": ["10", "12", "-12", "-10"],
        "correctIndex": 1
      },
      {
        "question": "81 ÷ 9 =",
        "options": ["8", "9", "10", "7"],
        "correctIndex": 1
      },
      {
        "question": "-150 ÷ -30 =",
        "options": ["4", "5", "-5", "-4"],
        "correctIndex": 1
      }
    ];

    final random = Random();
    selectedProblems = [];
    while (selectedProblems.length < 10) {
      final index = random.nextInt(allProblems.length);
      selectedProblems.add(allProblems[index]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _confirmExit,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Division of Integers with Like sign'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/OIP.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: _buildQuestion(),
          ),
        ),
      ),
    );
  }

  Future<bool> _confirmExit() async {
    return await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Exit Level'),
          content: Text('Do you want to exit the level? Your progress will be lost.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false); // User chose No
              },
              child: Text('No'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(true); // User chose Yes
              },
              child: Text('Yes'),
            ),
          ],
        );
      },
    ) ?? false; // If user cancels dialog, default action is to not exit
  }

  Widget _buildQuestion() {
    if (_currentQuestionIndex < selectedProblems.length) {
      return Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/OIP.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    selectedProblems[_currentQuestionIndex]['question'],
                    style: TextStyle(fontSize: 55, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Column(
                    children: List.generate(
                      selectedProblems[_currentQuestionIndex]['options'].length,
                          (index) {
                        bool isCorrect = index == selectedProblems[_currentQuestionIndex]['correctIndex'];
                        bool isSelected = _selectedOption == index;
                        IconData? iconData = isSelected ? (isCorrect ? Icons.check : Icons.close) : null;
                        Color iconColor = isSelected ? (isCorrect ? Colors.green : Colors.red) : Colors.transparent;
                        return InkWell(
                          onTap: () {
                            setState(() {
                              _selectedOption = index;
                              _nextQuestion();
                            });
                          },
                          child: Card(
                            color: Colors.lightBlueAccent.withOpacity(0.8),
                            child: ListTile(
                              title: Center(
                                child: Text(
                                  selectedProblems[_currentQuestionIndex]['options'][index],
                                  style: TextStyle(fontSize: 25, color: Colors.white),
                                ),
                              ),
                              trailing: iconData != null
                                  ? Icon(
                                iconData,
                                color: iconColor,
                              )
                                  : null,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    } else {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You have completed all questions.',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            Text(
              'Your score: $_score / ${selectedProblems.length}',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Finish', style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent.withOpacity(0.8),
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _currentQuestionIndex = 0;
                      _score = 0;
                      _selectedOption = -1;
                      selectRandomProblems();
                    });
                  },
                  child: Text('Retry', style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent.withOpacity(0.8),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }
  }
  void _nextQuestion() {
    if (_selectedOption != -1) {
      bool isCorrect = _selectedOption == selectedProblems[_currentQuestionIndex]['correctIndex'];
      if (isCorrect) {
        _score++;
      }
      setState(() {
        _currentQuestionIndex++;
        _selectedOption = -1;
      });
    }
  }
}