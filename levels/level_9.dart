import 'dart:math';
import 'package:flutter/material.dart';

class LevelPage9 extends StatefulWidget {
  @override
  _LevelPage9State createState() => _LevelPage9State();
}

class _LevelPage9State extends State<LevelPage9> {
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
        "question": "14 ÷ -2 =",
        "options": ["7", "-6", "6", "-7"],
        "correctIndex": 3
      },
      {
        "question": "-30 ÷ 5 =",
        "options": ["-5", "-6", "6", "5"],
        "correctIndex": 0
      },
      {
        "question": "24 ÷ -6 =",
        "options": ["-4", "4", "-3", "3"],
        "correctIndex": 0
      },
      {
        "question": "-16 ÷ 4 =",
        "options": ["-4", "4", "-3", "3"],
        "correctIndex": 0
      },
      {
        "question": "36 ÷ -9 =",
        "options": ["4", "3", "-4", "-3"],
        "correctIndex": 2
      },
      {
        "question": "-54 ÷ 6 =",
        "options": ["9", "-8", "7", "-9"],
        "correctIndex": 3
      },
      {
        "question": "32 ÷ -8 =",
        "options": ["3", "-4", "4", "-3"],
        "correctIndex": 1
      },
      {
        "question": "-25 ÷ 5 =",
        "options": ["6", "5", "-6", "-5"],
        "correctIndex": 3
      },
      {
        "question": "81 ÷ -9 =",
        "options": ["-9", "11", "9", "-8"],
        "correctIndex": 0
      },
      {
        "question": "-48 ÷ 12 =",
        "options": ["3", "-4", "-3", "4"],
        "correctIndex": 1
      },
      {
        "question": "60 ÷ -15 =",
        "options": ["-3", "-4", "4", "3"],
        "correctIndex": 1
      },
      {
        "question": "-100 ÷ 20 =",
        "options": ["6", "5", "-5", "-6"],
        "correctIndex": 2
      },
      {
        "question": "42 ÷ -7 =",
        "options": ["5", "6", "-6", "-5"],
        "correctIndex": 2
      },
      {
        "question": "-72 ÷ 8 =",
        "options": ["9", "8", "-8", "-9"],
        "correctIndex": 3
      },
      {
        "question": "90 ÷ -10 =",
        "options": ["10", "9", "-8", "-9"],
        "correctIndex": 3
      },
      {
        "question": "-64 ÷ 16 =",
        "options": ["-4", "4", "-3", "3"],
        "correctIndex": 0
      },
      {
        "question": "56 ÷ -14 =",
        "options": ["-4", "4", "-3", "3"],
        "correctIndex": 0
      },
      {
        "question": "-98 ÷ 14 =",
        "options": ["6", "-7", "7", "-6"],
        "correctIndex": 1
      },
      {
        "question": "75 ÷ -15 =",
        "options": ["-5", "4", "-4", "5"],
        "correctIndex": 0
      },
      {
        "question": "-45 ÷ 9 =",
        "options": ["-5", "5", "6", "-6"],
        "correctIndex": 0
      },
      {
        "question": "68 ÷ -17 =",
        "options": ["4", "-3", "-4", "3"],
        "correctIndex": 2
      },
      {
        "question": "-120 ÷ 30 =",
        "options": ["-3", "-4", "4", "3"],
        "correctIndex": 1
      },
      {
        "question": "49 ÷ -7 =",
        "options": ["6", "-6", "-7", "7"],
        "correctIndex": 2
      },
      {
        "question": "-80 ÷ 10 =",
        "options": ["-7", "7", "-8", "8"],
        "correctIndex": 2
      },
      {
        "question": "99 ÷ -11 =",
        "options": ["-9", "9", "10", "-8"],
        "correctIndex": 0
      },
      {
        "question": "-110 ÷ 22 =",
        "options": ["-4", "4", "-5", "5"],
        "correctIndex": 2
      },
      {
        "question": "104 ÷ -13 =",
        "options": ["-8", "8", "-7", "7"],
        "correctIndex": 0
      },
      {
        "question": "-144 ÷ 12 =",
        "options": ["11", "-11", "-12", "12"],
        "correctIndex": 2
      },
      {
        "question": "35 ÷ -5 =",
        "options": ["5", "4", "6", "-7"],
        "correctIndex": 3
      },
      {
        "question": "-150 ÷ 25 =",
        "options": ["-6", "6", "4", "-4"],
        "correctIndex": 0
      },
      {
        "question": "84 ÷ -14 =",
        "options": ["-6", "-5", "6", "5"],
        "correctIndex": 0
      },
      {
        "question": "-130 ÷ 26 =",
        "options": ["-5", "5", "-3", "3"],
        "correctIndex": 0
      },
      {
        "question": "66 ÷ -11 =",
        "options": ["-6", "6", "-5", "5"],
        "correctIndex": 0
      },
      {
        "question": "-90 ÷ 15 =",
        "options": ["6", "-6", "-4", "4"],
        "correctIndex": 1
      },
      {
        "question": "77 ÷ -7 =",
        "options": ["-10", "10", "-11", "11"],
        "correctIndex": 2
      },
      {
        "question": "-56 ÷ 8 =",
        "options": ["-7", "7", "-6", "6"],
        "correctIndex": 0
      },
      {
        "question": "96 ÷ -12 =",
        "options": ["-7", "-8", "8", "7"],
        "correctIndex": 1
      },
      {
        "question": "-108 ÷ 18 =",
        "options": ["-6", "6", "-5", "5"],
        "correctIndex": 0
      },
      {
        "question": "78 ÷ -13 =",
        "options": ["-6", "6", "-5", "5"],
        "correctIndex": 0
      },
      {
        "question": "-200 ÷ 40 =",
        "options": ["-5", "5", "-4", "4"],
        "correctIndex": 0
      },
      {
        "question": "88 ÷ -11 =",
        "options": ["-8", "8", "-7", "7"],
        "correctIndex": 0
      },
      {
        "question": "-120 ÷ 20 =",
        "options": ["-6", "6", "-5", "5"],
        "correctIndex": 0
      },
      {
        "question": "63 ÷ -9 =",
        "options": ["-7", "7", "-6", "6"],
        "correctIndex": 0
      },
      {
        "question": "-75 ÷ 15 =",
        "options": ["-5", "5", "-4", "4"],
        "correctIndex": 0
      },
      {
        "question": "110 ÷ -10 =",
        "options": ["-11", "11", "-10", "10"],
        "correctIndex": 0
      },
      {
        "question": "-132 ÷ 22 =",
        "options": ["-6", "6", "-5", "5"],
        "correctIndex": 0
      },
      {
        "question": "50 ÷ -5 =",
        "options": ["-10", "10", "-9", "9"],
        "correctIndex": 0
      },
      {
        "question": "-140 ÷ 28 =",
        "options": ["-5", "5", "-4", "4"],
        "correctIndex": 0
      },
      {
        "question": "85 ÷ -17 =",
        "options": ["-5", "5", "-4", "4"],
        "correctIndex": 0
      },
      {
        "question": "-150 ÷ 30 =",
        "options": ["-5", "5", "-6", "6"],
        "correctIndex": 0
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
          title: Text('Division of Integers with Unike sign'),
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