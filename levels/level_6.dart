import 'dart:math';
import 'package:flutter/material.dart';

class LevelPage6 extends StatefulWidget {
  @override
  _LevelPage6State createState() => _LevelPage6State();
}

class _LevelPage6State extends State<LevelPage6> {
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
        "question": "3 × 4 =",
        "options": ["7", "12", "9", "3"],
        "correctIndex": 1
      },
      {
        "question": "-5 × -2 =",
        "options": ["-7", "-10", "-3", "10"],
        "correctIndex": 3
      },
      {
        "question": "6 × 6 =",
        "options": ["18", "30", "36", "12"],
        "correctIndex": 2
      },
      {
        "question": "-3 × -7 =",
        "options": ["21", "-14", "-24", "-21"],
        "correctIndex": 0
      },
      {
        "question": "8 × 5 =",
        "options": ["35", "30", "40", "45"],
        "correctIndex": 2
      },
      {
        "question": "-4 × -6 =",
        "options": ["-14", "-18", "24", "-10"],
        "correctIndex": 2
      },
      {
        "question": "7 × 9 =",
        "options": ["49", "63", "56", "42"],
        "correctIndex": 1
      },
      {
        "question": "-1 × -8 =",
        "options": ["-7", "-6", "-8", "8"],
        "correctIndex": 3
      },
      {
        "question": "5 × 7 =",
        "options": ["35", "30", "40", "25"],
        "correctIndex": 0
      },
      {
        "question": "-2 × -9 =",
        "options": ["-11", "-8", "18", "-17"],
        "correctIndex": 2
      },
      {
        "question": "9 × 4 =",
        "options": ["36", "27", "32", "28"],
        "correctIndex": 0
      },
      {
        "question": "-6 × -3 =",
        "options": ["-12", "-15", "18", "-9"],
        "correctIndex": 2
      },
      {
        "question": "4 × 8 =",
        "options": ["28", "36", "32", "32"],
        "correctIndex": 3
      },
      {
        "question": "-7 × -2 =",
        "options": ["-16", "14", "-4", "-9"],
        "correctIndex": 1
      },
      {
        "question": "10 × 5 =",
        "options": ["35", "40", "50", "50"],
        "correctIndex": 3
      },
      {
        "question": "-3 × -5 =",
        "options": ["-8", "15", "-12", "-10"],
        "correctIndex": 1
      },
      {
        "question": "6 × 3 =",
        "options": ["15", "18", "12", "9"],
        "correctIndex": 1
      },
      {
        "question": "-4 × -4 =",
        "options": ["-8", "-14", "16", "-12"],
        "correctIndex": 2
      },
      {
        "question": "8 × 6 =",
        "options": ["42", "48", "54", "56"],
        "correctIndex": 1
      },
      {
        "question": "-5 × -3 =",
        "options": ["-8", "15", "-12", "-10"],
        "correctIndex": 1
      },
      {
        "question": "7 × 6 =",
        "options": ["35", "30", "42", "49"],
        "correctIndex": 0
      },
      {
        "question": "-2 × -7 =",
        "options": ["-16", "14", "-9", "-4"],
        "correctIndex": 1
      },
      {
        "question": "9 × 2 =",
        "options": ["18", "11", "20", "16"],
        "correctIndex": 0
      },
      {
        "question": "-3 × -6 =",
        "options": ["-12", "-15", "18", "-9"],
        "correctIndex": 2
      },
      {
        "question": "4 × 5 =",
        "options": ["15", "20", "25", "18"],
        "correctIndex": 1
      },
      {
        "question": "-6 × -2 =",
        "options": ["-10", "-12", "12", "-8"],
        "correctIndex": 2
      },
      {
        "question": "5 × 8 =",
        "options": ["40", "45", "35", "30"],
        "correctIndex": 0
      },
      {
        "question": "-7 × -3 =",
        "options": ["-14", "21", "-24", "-10"],
        "correctIndex": 1
      },
      {
        "question": "10 × 4 =",
        "options": ["35", "30", "40", "45"],
        "correctIndex": 2
      },
      {
        "question": "-1 × -9 =",
        "options": ["-10", "-7", "-6", "9"],
        "correctIndex": 3
      },
      {
        "question": "9 × 5 =",
        "options": ["40", "45", "55", "50"],
        "correctIndex": 1
      },
      {
        "question": "-4 × -5 =",
        "options": ["-25", "20", "-15", "-10"],
        "correctIndex": 1
      },
      {
        "question": "6 × 7 =",
        "options": ["42", "35", "49", "56"],
        "correctIndex": 0
      },
      {
        "question": "-3 × -4 =",
        "options": ["-14", "-7", "-10", "12"],
        "correctIndex": 3
      },
      {
        "question": "7 × 8 =",
        "options": ["49", "64", "42", "56"],
        "correctIndex": 3
      },
      {
        "question": "-2 × -6 =",
        "options": ["-10", "-12", "-8", "12"],
        "correctIndex": 3
      },
      {
        "question": "8 × 9 =",
        "options": ["70", "81", "72", "64"],
        "correctIndex": 2
      },
      {
        "question": "-1 × -5 =",
        "options": ["-4", "-3", "5", "6"],
        "correctIndex": 2
      },
      {
        "question": "9 × 6 =",
        "options": ["54", "48", "45", "60"],
        "correctIndex": 3
      },
      {
        "question": "-7 × -4 =",
        "options": ["-24", "28", "-28", "-32"],
        "correctIndex": 1
      },
      {
        "question": "5 × 9 =",
        "options": ["40", "35", "45", "50"],
        "correctIndex": 2
      },
      {
        "question": "-6 × -5 =",
        "options": ["-35", "-25", "-20", "30"],
        "correctIndex": 3
      },
      {
        "question": "8 × 7 =",
        "options": ["49", "42", "56", "64"],
        "correctIndex": 2
      },
      {
        "question": "-2 × -8 =",
        "options": ["-10", "-16", "-14", "16"],
        "correctIndex": 3
      },
      {
        "question": "10 × 6 =",
        "options": ["40", "50", "60", "70"],
        "correctIndex": 2
      },
      {
        "question": "-5 × -4 =",
        "options": ["-20", "20", "-15", "-25"],
        "correctIndex": 1
      },
      {
        "question": "7 × 5 =",
        "options": ["25", "35", "30", "40"],
        "correctIndex": 1
      },
      {
        "question": "-3 × -3 =",
        "options": ["-9", "-6", "9", "-12"],
        "correctIndex": 2
      },
      {
        "question": "9 × 8 =",
        "options": ["76", "72", "81", "64"],
        "correctIndex": 2
      },
      {
        "question": "-4 × -7 =",
        "options": ["-14", "28", "-24", "-28"],
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
          title: Text('Multiplication of Integers with Like sign'),
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