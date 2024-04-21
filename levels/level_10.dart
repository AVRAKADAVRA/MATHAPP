import 'dart:math';
import 'package:flutter/material.dart';

class LevelPage10 extends StatefulWidget {
  @override
  _LevelPage10State createState() => _LevelPage10State();
}

class _LevelPage10State extends State<LevelPage10> {
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
        "question": "8 × -4 =",
        "options": ["-28", "-32", "28", "32"],
        "correctIndex": 1
      },
      {
        "question": "24 ÷ 6 =",
        "options": ["-4", "3", "4", "-3"],
        "correctIndex": 2
      },
      {
        "question": "7 × -3 =",
        "options": ["21", "-18", "18", "-21"],
        "correctIndex": 0
      },
      {
        "question": "-16 ÷ 4 =",
        "options": ["-4", "-3", "4", "3"],
        "correctIndex": 0
      },
      {
        "question": "7 × 5 =",
        "options": ["35", "30", "-30", "-35"],
        "correctIndex": 0
      },
      {
        "question": "-18 ÷ -9 =",
        "options": ["1", "2", "-2", "-1"],
        "correctIndex": 0
      },
      {
        "question": "10 × -4 =",
        "options": ["40", "-35", "35", "-40"],
        "correctIndex": 3
      },
      {
        "question": "16 ÷ -8 =",
        "options": ["-2", "1", "2", "-1"],
        "correctIndex": 0
      },
      {
        "question": "9 × -9 =",
        "options": ["-76", "-81", "81", "76"],
        "correctIndex": 1
      },
      {
        "question": "-30 ÷ 10 =",
        "options": ["3", "-2", "-3", "2"],
        "correctIndex": 2
      },
      {
        "question": "14 × -2 =",
        "options": ["28", "-24", "-28", "24"],
        "correctIndex": 2
      },
      {
        "question": "42 ÷ -7 =",
        "options": ["6", "-5", "-6", "5"],
        "correctIndex": 0
      },
      {
        "question": "12 × 4 =",
        "options": ["-48", "-44", "44", "48"],
        "correctIndex": 3
      },
      {
        "question": "-25 ÷ -5 =",
        "options": ["-5", "-4", "4", "5"],
        "correctIndex": 0
      },
      {
        "question": "11 × -11 =",
        "options": ["121", "-121", "116", "-116"],
        "correctIndex": 1
      },
      {
        "question": "48 ÷ 12 =",
        "options": ["3", "-3", "-4", "4"],
        "correctIndex": 3
      },
      {
        "question": "20 × -3 =",
        "options": ["-55", "55", "-60", "60"],
        "correctIndex": 2
      },
      {
        "question": "100 ÷ -20 =",
        "options": ["-4", "-5", "5", "4"],
        "correctIndex": 0
      },
      {
        "question": "6 × 6 =",
        "options": ["32", "-36", "36", "-32"],
        "correctIndex": 2
      },
      {
        "question": "-54 ÷ -9 =",
        "options": ["-6", "6", "-5", "5"],
        "correctIndex": 1
      },
      {
        "question": "14 × -7 =",
        "options": ["-98", "-94", "98", "94"],
        "correctIndex": 0
      },
      {
        "question": "72 ÷ -8 =",
        "options": ["-9", "9", "-7", "7"],
        "correctIndex": 0
      },
      {
        "question": "5 × 10 =",
        "options": ["50", "-45", "-50", "45"],
        "correctIndex": 0
      },
      {
        "question": "-64 ÷ 16 =",
        "options": ["3", "4", "-4", "-3"],
        "correctIndex": 2
      },
      {
        "question": "3 × -15 =",
        "options": ["40", "-45", "45", "-40"],
        "correctIndex": 1
      },
      {
        "question": "-45 ÷ 5 =",
        "options": ["-8", "-9", "9", "7"],
        "correctIndex": 1
      },
      {
        "question": "17 × 1 =",
        "options": ["15", "-17", "17", "-15"],
        "correctIndex": 2
      },
      {
        "question": "-14 ÷ 14 =",
        "options": ["-1", "1", "-2", "2"],
        "correctIndex": 0
      },
      {
        "question": "15 × -5 =",
        "options": ["-70", "-75", "75", "70"],
        "correctIndex": 1
      },
      {
        "question": "-100 ÷ -10 =",
        "options": ["9", "-10", "10", "-9"],
        "correctIndex": 1
      },
      {
        "question": "8 × -14 =",
        "options": ["-112", "112", "-108", "108"],
        "correctIndex": 0
      },
      {
        "question": "-130 ÷ 26 =",
        "options": ["5", "-5", "-4", "4"],
        "correctIndex": 1
      },
      {
        "question": "6 × -11 =",
        "options": ["-62", "-66", "66", "62"],
        "correctIndex": 1
      },
      {
        "question": "30 ÷ 15 =",
        "options": ["-2", "1", "2", "2"],
        "correctIndex": 3
      },
      {
        "question": "7 × -7 =",
        "options": ["49", "-45", "-49", "45"],
        "correctIndex": 0
      },
      {
        "question": "-56 ÷ -8 =",
        "options": ["7", "-7", "6", "-6"],
        "correctIndex": 0
      },
      {
        "question": "6 × 12 =",
        "options": ["68", "72", "-72", "-68"],
        "correctIndex": 1
      },
      {
        "question": "-108 ÷ 18 =",
        "options": ["-6", "5", "-5", "6"],
        "correctIndex": 0
      },
      {
        "question": "9 × -13 =",
        "options": ["-113", "-117", "117", "113"],
        "correctIndex": 1
      },
      {
        "question": "20 ÷ -5 =",
        "options": ["-3", "4", "-4", "3"],
        "correctIndex": 2
      },
      {
        "question": "8 × -11 =",
        "options": ["-88", "-84", "84", "88"],
        "correctIndex": 0
      },
      {
        "question": "20 ÷ -20 =",
        "options": ["-1", "-2", "1", "2"],
        "correctIndex": 0
      },
      {
        "question": "7 × 9 =",
        "options": ["-63", "-59", "59", "63"],
        "correctIndex": 3
      },
      {
        "question": "-75 ÷ 15 =",
        "options": ["-4", "4", "-5", "5"],
        "correctIndex": 3
      },
      {
        "question": "10 × -10 =",
        "options": ["-100", "95", "-95", "100"],
        "correctIndex": 0
      },
      {
        "question": "-12 ÷ 2 =",
        "options": ["-6", "-5", "5", "6"],
        "correctIndex": 0
      },
      {
        "question": "5 × -16 =",
        "options": ["-75", "-80", "80", "75"],
        "correctIndex": 1
      },
      {
        "question": "-140 ÷ 28 =",
        "options": ["-5", "-4", "4", "-5"],
        "correctIndex": 3
      },
      {
        "question": "15 ÷ -3 =",
        "options": ["-5", "-4", "4", "5"],
        "correctIndex": 0
      },
      {
        "question": "-150 ÷ 30 =",
        "options": ["-4", "5", "-5", "4"],
        "correctIndex": 2
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
          title: Text('Multiplication and Division of Integers'),
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