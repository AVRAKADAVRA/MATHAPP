import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LevelPage1 extends StatefulWidget {
  @override
  _LevelPage1State createState() => _LevelPage1State();
}

class _LevelPage1State extends State<LevelPage1> {
  late List<Map<String, dynamic>> selectedProblems;
  late int _currentQuestionIndex;
  int _selectedOption = -1;
  int _score = 0;

  late SharedPreferences _prefs;

  @override
  void initState() {
    super.initState();
    _currentQuestionIndex = 0;
    _initializeSharedPreferences();
    selectRandomProblems();
  }

  Future<void> _initializeSharedPreferences() async {
    _prefs = await SharedPreferences.getInstance();
    _score = _prefs.getInt('level1_score') ?? 0;
  }

  void selectRandomProblems() {
    final List<Map<String, dynamic>> allProblems = [
      {
        'question': '-10 + -30 =',
        'options': ['-50', '45', '-40', '-35'],
        'correctIndex': 2,
      },
      {
        'question': '-4 + -1 =',
        'options': ['-15', '-5', '0', '5'],
        'correctIndex': 1,
      },
      {
        'question': '-2 + -5 =',
        'options': ['-17', '12', '-7', '-2'],
        'correctIndex': 2,
      },
      {
        'question': '-1 + -8 =',
        'options': ['14', '-9', '-4', '1'],
        'correctIndex': 1,
      },
      {
        'question': '19 + 3 =',
        'options': ['22', '2', '40', '6'],
        'correctIndex': 0,
      },
      {
        'question': '14 + 9 =',
        'options': ['12', '34', '23', '10'],
        'correctIndex': 2,
      },
      {
        'question': '16 + 6 =',
        'options': ['22', '36', '24', '14'],
        'correctIndex': 0,
      },
      {
        'question': '18 + 17 =',
        'options': ['6', '7', '35', '18'],
        'correctIndex': 2,
      },
      {
        'question': '13 + 9 =',
        'options': ['35', '39', '33', '22'],
        'correctIndex': 3,
      },
      {
        'question': '13 + 20 =',
        'options': ['26', '33', '17', '38'],
        'correctIndex': 1,
      },
      {
        'question': '16 + 4 =',
        'options': ['20', '24', '39', '14'],
        'correctIndex': 0,
      },
      {
        'question': '7 + 16 =',
        'options': ['23', '40', '33', '21'],
        'correctIndex': 0,
      },
      {
        'question': '19 + 19 =',
        'options': ['38', '24', '21', '14'],
        'correctIndex': 0,
      },
      {
        'question': '-60 + -90 =',
        'options': ['-160', '-150', '-145', '-140'],
        'correctIndex': 1,
      },
      {
        'question': '-8 + -9 =',
        'options': ['-27', '-22', '-17', '-12'],
        'correctIndex': 2,
      },
      {
        'question': '-3 + -9 =',
        'options': ['-22', '-12', '-7', '-2'],
        'correctIndex': 1,
      },
      {
        'question': '-60 + -20 =',
        'options': ['-90', '-80', '-75', '-70'],
        'correctIndex': 1,
      },
      {
        'question': '-70 + -20 =',
        'options': ['-100', '-95', '-90', '-85'],
        'correctIndex': 2,
      },
      {
        'question': '-2 + -6 =',
        'options': ['-18', '-13', '-8', '2'],
        'correctIndex': 2,
      },
      {
        'question': '-40 + -50 =',
        'options': ['-100', '-95', '-90', '-85'],
        'correctIndex': 2,
      },
      {
        'question': '-40 + -70 =',
        'options': ['-120', '-115', '-110', '-105'],
        'correctIndex': 2,
      },
      {
        'question': '13 + 8 =',
        'options': ['21', '36', '38', '26'],
        'correctIndex': 0,
      },
      {
        'question': '9 + 8 =',
        'options': ['14', '17', '2', '39'],
        'correctIndex': 1,
      },
      {
        'question': '10 + 1 =',
        'options': ['8', '11', '17', '33'],
        'correctIndex': 1,
      },
      {
        'question': '5 + 18 =',
        'options': ['39', '23', '37', '17'],
        'correctIndex': 1,
      },
      {
        'question': '19 + 15 =',
        'options': ['34', '29', '40', '12'],
        'correctIndex': 0,
      },
      {
        'question': '19 + 2 =',
        'options': ['24', '21', '39', '40'],
        'correctIndex': 1,
      },
      {
        'question': '7 + 6 =',
        'options': ['38', '13', '22', '25'],
        'correctIndex': 1,
      },
      {
        'question': '8 + 8 =',
        'options': ['28', '20', '16', '29'],
        'correctIndex': 2,
      },
      {
        'question': '-7 + -7 =',
        'options': ['-24', '19', '-14', '9'],
        'correctIndex': 2,
      },
      {
        'question': '-60 + -70 =',
        'options': ['130', '-130', '125', '-120'],
        'correctIndex': 1,
      },
      {
        'question': '-4 + -8 =',
        'options': ['17', '-12', '-7', '2'],
        'correctIndex': 1,
      },
      {
        'question': '-9 + -2 =',
        'options': ['16', '-11', '6', '-1'],
        'correctIndex': 1,
      },
      {
        'question': '-9 + -6 =',
        'options': ['-25', '-20', '-15', '-10'],
        'correctIndex': 2,
      },
      {
        'question': '-40 + -40 =',
        'options': ['85', '-80', '-75', '70'],
        'correctIndex': 1,
      },
      {
        'question': '-3 + -1 = ',
        'options': ['-14', '-4', '1', '6'],
        'correctIndex': 1,
      },
      {
        'question': '-60 + -30 =',
        'options': ['-100', '95', '-90', '-80'],
        'correctIndex': 2,
      },
      {
        'question': '-3 + -7 =',
        'options': ['20', '-10', '-5', '0'],
        'correctIndex': 1,
      },
      {
        'question': '-40 + -10 =',
        'options': ['-55', '-50', '-45', '-40'],
        'correctIndex': 1,
      },
      {
        'question': '-6 + -2 =',
        'options': ['-18', '-13', '-8', '-3'],
        'correctIndex': 2,
      },
      {
        'question': '-5 + -9 =',
        'options': ['-19', '-14', '-9', '-4'],
        'correctIndex': 1,
      },
      {
        'question': '-4 + -4 =',
        'options': ['-13', '-8', '-3', '2'],
        'correctIndex': 1,
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
      onWillPop: () async {
        // Show confirmation dialog when back button is pressed
        bool confirmExit = await showDialog(
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
                    _saveScore();
                    Navigator.of(context).pop(true); // User chose Yes
                  },
                  child: Text('Yes'),
                ),
              ],
            );
          },
        );
        return confirmExit ?? false; // If user cancels dialog, default action is to not exit
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Level 1'),
          centerTitle: true,
        ),
        backgroundColor: Colors.blue,
        body: Center(
          child: _buildQuestion(),
        ),
      ),
    );
  }

  Widget _buildQuestion() {
    if (_currentQuestionIndex < selectedProblems.length) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: ListTile(
                    title: Center(
                      child: Text(
                        selectedProblems[_currentQuestionIndex]['question'],
                        style: TextStyle(fontSize: 20), // Adjust the font size as needed
                      ),
                    ),
                  ),
                ),
                Column(
                  children: List.generate(
                    selectedProblems[_currentQuestionIndex]['options'].length,
                        (index) {
                      bool isCorrect = index == selectedProblems[_currentQuestionIndex]['correctIndex'];
                      bool isSelected = _selectedOption == index;
                      Color backgroundColor = isSelected ? (isCorrect ? Colors.green : Colors.red) : Colors.transparent;
                      Color textColor = isSelected ? Colors.white : Colors.black; // Adjust text color based on selection
                      IconData? iconData = isSelected ? (isCorrect ? Icons.check : Icons.close) : null;
                      Color iconColor = isSelected ? (isCorrect ? Colors.green : Colors.red) : Colors.transparent;
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedOption = index;
                            _nextQuestion();
                          });
                        },
                        child: Card(
                          color: backgroundColor,
                          child: ListTile(
                            title: Text(
                              selectedProblems[_currentQuestionIndex]['options'][index],
                              style: TextStyle(
                                fontSize: 16, // Adjust the font size as needed
                                color: textColor, // Apply text color
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
      );
    } else {
      // End of questions
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You have completed all questions.'),
            Text('Your score: $_score / ${selectedProblems.length}'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _saveScore();
                    Navigator.pop(context); // Navigate back to the previous screen
                  },
                  child: Text('Finish'),
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
                  child: Text('Retry'),
                ),
              ],
            ),
          ],
        ),
      );
    }
  }

  void _saveScore() {
    _prefs.setInt('level1_score', _score);
  }

  void _nextQuestion() {
    if (_selectedOption != -1) {
      // Handle answer verification here
      bool isCorrect = _selectedOption == selectedProblems[_currentQuestionIndex]['correctIndex'];
      if (isCorrect) {
        _score++;
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(isCorrect ? 'Correct! Score: $_score' : 'Incorrect. Score: $_score'),
        ),
      );

      // Move to the next question
      setState(() {
        _currentQuestionIndex++;
        _selectedOption = -1; // Reset selected option for the next question
      });
    } else {
      // Prompt user to select an option
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Select an option'),
            content: Text('Please select an option before proceeding to the next question.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }
}