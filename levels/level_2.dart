import 'dart:math';
import 'package:flutter/material.dart';

class LevelPage2 extends StatefulWidget {
  @override
  _LevelPage2State createState() => _LevelPage2State();
}

class _LevelPage2State extends State<LevelPage2> {
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
        'question': '-12 + 9 =',
        'options': ['-3','-21',' 3', '-4'],
        'correctIndex': 0,
      },
      {
        'question': '18 + -18 =',
        'options': ['-1', '2', '-2', '0'],
        'correctIndex': 3,
      },
          {
            'question': '-16 + 7 =',
            'options': ['-11', '-8', '-9', '10'],
            'correctIndex': 2,
          },
          {
            'question': '-17 + 6 =',
            'options': ['13', '-10', '-11', '-9'],
            'correctIndex': 2,
          },
          {
            'question': '-17 + 16 =',
            'options': ['-1', '-3', '0', '-2'],
            'correctIndex': 0,
          },
      {
        'question': '-10 + 14 =',
        'options': ['3', '4', '5', '2'],
        'correctIndex': 1,
      },
          {
            'question': '17 + -9 =',
            'options': ['7', '8', '6', '9'],
            'correctIndex': 0,
          },
      {
        'question': '-14 + 12 =',
        'options': ['-1', '-2', '-3', '0'],
        'correctIndex': 1,
      },
          {
            'question': '15 + -15 =',
            'options': ['-1', '1', '0', '-2'],
            'correctIndex': 2,
          },
      {
        'question': '-13 + 8 =',
        'options': ['-6', '-5', '-7', '-4'],
        'correctIndex': 0,
      },
      {
        'question': '19 + -4 =',
        'options': ['14', '15', '16', '13'],
        'correctIndex': 1,
      },
      {
        'question': '-19 + 3 =',
        'options': ['-15', '-16', '-17', '-14'],
        'correctIndex': 1,
      },
          {
            'question': '10 + -7 =',
            'options': ['2', '3', '17', '1'],
            'correctIndex': 1,
          },
      {
        'question': '-11 + 19 =',
        'options': ['8', '7', '9', '6'],
        'correctIndex': 0,
      },
          {
            'question': '12 + -2 =',
            'options': ['9', '10', '-14', '-10'],
            'correctIndex': 1,
          },
      {
        'question': '-15 + 15 =',
        'options': ['-1', '0', '1', '-2'],
        'correctIndex': 1,
      },
          {
            'question': '13 + -6 =',
            'options': ['6', '7', '8', '5'],
            'correctIndex': 1,
          },
      {
        'question': '-18 + 17 =',
        'options': ['0', '-1', '1', '-2'],
        'correctIndex': 1,
      },
          {
            'question': '11 + -11 =',
            'options': ['1', '0', '-1', '2'],
            'correctIndex': 1,
          },
      {
        'question': '-20 + 10 =',
        'options': ['-9', '-10', '-11', '-8'],
        'correctIndex': 1,
      },
          {
            'question': '14 + -8 =',
            'options': ['5', '6', '7', '4'],
            'correctIndex': 1,
          },
      {
        'question': '-5 + 18 =',
        'options': ['12', '13', '14', '-23'],
        'correctIndex': 1,
      },
          {
            'question': '16 + -3 =',
            'options': ['19', '13', '14', '11'],
            'correctIndex': 1,
          },
      {
        'question': '-9 + 7 =',
        'options': ['-1', '0', '-2', '-1'],
        'correctIndex': 3,
      },
          {
            'question': '18 + -1 =',
            'options': ['-19', '17', '18', '15'],
            'correctIndex': 1,
          },
      {
        'question': '-17 + 14 =',
        'options': ['-2', '-3', '-4', '-1'],
        'correctIndex': 3,
      },
          {
            'question': '10 + -10 =',
            'options': ['-1', '0', '1', '-2'],
            'correctIndex': 1,
          },
      {
        'question': '-15 + 20 =',
        'options': ['4', '5', '6', '3'],
        'correctIndex': 1,
      },
          {
            'question': '17 + -7 =',
            'options': ['9', '10', '11', '-8'],
            'correctIndex': 1,
          },
      {
        'question': '-14 + 18 =',
        'options': ['3', '4', '5', '2'],
        'correctIndex': 1,
      },
          {
            'question': '13 + -13 =',
            'options': ['-1', '0', '1', '-2'],
            'correctIndex': 1,
          },
      {
        'question': '-12 + 15 =',
        'options': ['2', '3', '4', '1'],
        'correctIndex': 1,
      },
          {
            'question': '19 + -19 =',
            'options': ['-1', '0', '1', '-2'],
            'correctIndex': 1,
          },
      {
        'question': '-16 + 16 =',
        'options': ['-1', '0', '1', '-2'],
        'correctIndex': 1,
      },
          {
            'question': '11 + -5 =',
            'options': ['5', '6', '7', '4'],
            'correctIndex': 0,
          },
      {
        'question': '-18 + 9 =',
        'options': ['-8', '-9', '-10', '-7'],
        'correctIndex': 1,
      },
          {
            'question': '14 + -14 =',
            'options': ['-1', '0', '1', '-2'],
            'correctIndex': 1,
          },
      {
        'question': '-10 + 17 =',
        'options': ['6', '7', '8', '5'],
        'correctIndex': 1,
      },
          {
            'question': '16 + -6 =',
            'options': ['9', '10', '11', '-10'],
            'correctIndex': 1,
          },
      {
        'question': '-19 + 11 =',
        'options': ['-7', '-8', '9', '-6'],
        'correctIndex': 2,
      },
          {
            'question': '12 + -3 =',
            'options': ['9', '10', '11', '7'],
            'correctIndex': 0,
          },
      {
        'question': '-8 + 12 =',
        'options': ['3', '4', '5', '2'],
        'correctIndex': 1,
      },
          {
            'question': '15 + -10 =',
            'options': ['4', '5', '6', '3'],
            'correctIndex': 1,
          },
      {
        'question': '-13 + 10 =',
        'options': ['-2', '-3', '-4', '-1'],
        'correctIndex': 3,
      },
          {
            'question': '18 + -5 =',
            'options': ['12', '13', '14', '11'],
            'correctIndex': 0,
          },
      {
        'question': '-11 + 16 =',
        'options': ['4', '5', '6', '3'],
        'correctIndex': 1,
      },
          {
            'question': '10 + -18 =',
            'options': ['-7', '-8', '-9', '-6'],
            'correctIndex': 1,
          },
      {
        'question': '-20 + 5 =',
        'options': ['-14', '-15', '-16', '-13'],
        'correctIndex': 1,
      },
          {
            'question': '13 + -8 =',
            'options': ['4', '5', '6', '3'],
            'correctIndex': 1,
          },
      {
        'question': '-14 + 9 =',
        'options': ['-4', '-5', '6', '5'],
        'correctIndex': 3,
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
          title: Text('Addition of Integers with Unlike sign'),
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