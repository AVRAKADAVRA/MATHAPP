import 'dart:math';
import 'package:flutter/material.dart';

class LevelPage7 extends StatefulWidget {
  @override
  _LevelPage7State createState() => _LevelPage7State();
}

class _LevelPage7State extends State<LevelPage7> {
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
        "question": "2 × -10 =",
        "options": ["-20", "18", "-18", "20"],
        "correctIndex": 0
      },
      {
        "question": "-15 × 2 =",
        "options": ["30", "-28", "-30", "28"],
        "correctIndex": 2
      },
      {
        "question": "12 × -3 =",
        "options": ["-33", "36", "33", "-36"],
        "correctIndex": 3
      },
      {
        "question": "-1 × 20 =",
        "options": ["-20", "18", "-18", "20"],
        "correctIndex": 0
      },
      {
        "question": "9 × -4 =",
        "options": ["-34", "36", "34", "-36"],
        "correctIndex": 3
      },
      {
        "question": "-8 × 5 =",
        "options": ["-40", "38", "-38", "40"],
        "correctIndex": 0
      },
      {
        "question": "14 × -2 =",
        "options": ["-28", "26", "-26", "28"],
        "correctIndex": 0
      },
      {
        "question": "-3 × 12 =",
        "options": ["33", "-36", "-33", "36"],
        "correctIndex": 1
      },
      {
        "question": "18 × -1 =",
        "options": ["-18", "16", "18", "-16"],
        "correctIndex": 0
      },
      {
        "question": "-2 × 25 =",
        "options": ["50", "-48", "-50", "48"],
        "correctIndex": 2
      },
      {
        "question": "11 × -6 =",
        "options": ["66", "-64", "-66", "64"],
        "correctIndex": 3
      },
      {
        "question": "-5 × 10 =",
        "options": ["-50", "45", "-45", "50"],
        "correctIndex": 0
      },
      {
        "question": "17 × -3 =",
        "options": ["-51", "48", "-48", "51"],
        "correctIndex": 0
      },
      {
        "question": "-7 × 4 =",
        "options": ["28", "-25", "-28", "25"],
        "correctIndex": 2
      },
      {
        "question": "20 × -5 =",
        "options": ["-100", "95", "-95", "100"],
        "correctIndex": 0
      },
      {
        "question": "-1 × 30 =",
        "options": ["-30", "28", "-28", "30"],
        "correctIndex": 0
      },
      {
        "question": "13 × -2 =",
        "options": ["-26", "24", "-24", "26"],
        "correctIndex": 0
      },
      {
        "question": "-10 × 3 =",
        "options": ["-30", "27", "-27", "30"],
        "correctIndex": 0
      },
      {
        "question": "21 × -1 =",
        "options": ["21", "-19", "19", "-21"],
        "correctIndex": 3
      },
      {
        "question": "-4 × 15 =",
        "options": ["-60", "55", "-55", "60"],
        "correctIndex": 0
      },
      {
        "question": "12 × -2 =",
        "options": ["-24", "22", "-22", "24"],
        "correctIndex": 0
      },
      {
        "question": "-6 × 7 =",
        "options": ["40", "-42", "-40", "42"],
        "correctIndex": 1
      },
      {
        "question": "10 × -8 =",
        "options": ["-80", "78", "-78", "80"],
        "correctIndex": 0
      },
      {
        "question": "-9 × 5 =",
        "options": ["-40", "40", "-45", "45"],
        "correctIndex": 2
      },
      {
        "question": "16 × -3 =",
        "options": ["-48", "45", "-45", "48"],
        "correctIndex": 0
      },
      {
        "question": "-3 × 14 =",
        "options": ["-39", "39", "-42", "42"],
        "correctIndex": 2
      },
      {
        "question": "19 × -2 =",
        "options": ["-36", "38", "-38", "36"],
        "correctIndex": 2
      },
      {
        "question": "-4 × 20 =",
        "options": ["-80", "75", "-75", "80"],
        "correctIndex": 0
      },
      {
        "question": "25 × -1 =",
        "options": ["-25", "23", "-23", "25"],
        "correctIndex": 0
      },
      {
        "question": "-1 × 18 =",
        "options": ["-18", "16", "-16", "18"],
        "correctIndex": 0
      },
      {
        "question": "13 × -4 =",
        "options": ["-52", "50", "-50", "52"],
        "correctIndex": 0
      },
      {
        "question": "-10 × 6 =",
        "options": ["-60", "58", "-58", "60"],
        "correctIndex": 0
      },
      {
        "question": "14 × -5 =",
        "options": ["-70", "68", "-68", "70"],
        "correctIndex": 0
      },
      {
        "question": "-7 × 11 =",
        "options": ["-77", "75", "-75", "77"],
        "correctIndex": 0
      },
      {
        "question": "22 × -3 =",
        "options": ["-66", "64", "-64", "66"],
        "correctIndex": 0
      },
      {
        "question": "-2 × 19 =",
        "options": ["-38", "36", "-36", "38"],
        "correctIndex": 0
      },
      {
        "question": "11 × -7 =",
        "options": ["77", "75", "-75", "-77"],
        "correctIndex": 3
      },
      {
        "question": "-5 × 9 =",
        "options": ["-45", "40", "-40", "45"],
        "correctIndex": 0
      },
      {
        "question": "20 × -4 =",
        "options": ["-80", "78", "-78", "80"],
        "correctIndex": 0
      },
      {
        "question": "-3 × 15 =",
        "options": ["-45", "40", "-40", "45"],
        "correctIndex": 0
      },
      {
        "question": "10 × -9 =",
        "options": ["-90", "88", "-88", "90"],
        "correctIndex": 0
      },
      {
        "question": "-12 × 3 =",
        "options": ["-33", "33", "-36", "36"],
        "correctIndex":2
      },
      {
        "question": "15 × -2 =",
        "options": ["-30", "28", "-28", "30"],
        "correctIndex": 0
      },
      {
        "question": "-8 × 6 =",
        "options": ["48", "46", "-46", "-48"],
        "correctIndex": 3
      },
      {
        "question": "24 × -1 =",
        "options": ["-24", "22", "-22", "24"],
        "correctIndex": 0
      },
      {
        "question": "-1 × 17 =",
        "options": ["16", "-17", "-15", "-16"],
        "correctIndex": 1
      },
      {
        "question": "13 × -6 =",
        "options": ["-78", "76", "-76", "78"],
        "correctIndex": 0
      },
      {
        "question": "-4 × 12 =",
        "options": ["-48", "45", "-45", "48"],
        "correctIndex": 0
      },
      {
        "question": "10 × -10 =",
        "options": ["-98", "98", "-100", "100"],
        "correctIndex": 2
      },
      {
        "question": "-2 × 25 =",
        "options": ["50", "48", "-48", "-50"],
        "correctIndex": 3
      },
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
          title: Text('Subtraction of Integers with Unlike sign'),
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