import 'dart:math';
import 'package:flutter/material.dart';

class LevelPage3 extends StatefulWidget {
  @override
  _LevelPage3State createState() => _LevelPage3State();
}

class _LevelPage3State extends State<LevelPage3> {
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
          'question': '10 - 1 =',
          'options': ['13', '-7', '9', '7'],
          'correctIndex': 2,
        },
    {
      'question': '-15 - (-5) =',
      'options': ['-5', '-20', '-10', '-15'],
      'correctIndex': 2,
    },
        {
          'question': '24 - 14 =',
          'options': ['12', '8', '-16', '10'],
          'correctIndex': 3,
        },
    {
      'question': '-20 - (-4) =',
      'options': ['-16', '-24', '-15', '-10'],
      'correctIndex': 0,
    },
        {
          'question': '35 - 30 =',
          'options': ['10', '15', '-25', '5'],
          'correctIndex': 3,
        },
    {
      'question': '-25 - (-10) =',
      'options': ['-15', '-35', '-20', '-10'],
      'correctIndex': 0,
    },
        {
          'question': '47 - 29 =',
          'options': ['18', '28', '17', '-19'],
          'correctIndex': 0,
        },
    {
      'question': '-36 - (-7) =',
      'options': ['-25', '-29', '-30', '-33'],
      'correctIndex': 1,
    },
        {
          'question': '58 - 33 =',
          'options': ['28', '22', '25', '15'],
          'correctIndex': 2,
        },
    {
      'question': '-40 - (-12) =',
      'options': ['-32', '-22', '-28', '-52'],
      'correctIndex': 2,
    },
          {
            'question': '65 - 42 =',
            'options': ['23', '-22', '25', '-20'],
            'correctIndex': 0,
          },
      {
        'question': '-54 - (-21) =',
        'options': ['-33', '-31', '-73', '-75'],
        'correctIndex': 0,
      },
          {
            'question': '76 - 59 =',
            'options': ['-16', '17', '18', '15'],
            'correctIndex': 1,
          },
      {
        'question': '-63 - (-18) =',
        'options': ['-45', '-41', '-81', '-85'],
        'correctIndex': 0,
      },
          {
            'question': '84 - 37 =',
            'options': ['47', '43', '57', '50'],
            'correctIndex': 0,
          },
      {
        'question': '-70 - (-22) =',
        'options': ['-48', '-52', '-88', '-92'],
        'correctIndex': 0,
      },
          {
            'question': '92 - 50 =',
            'options': ['42', '40', '48', '-52'],
            'correctIndex': 0,
          },
      {
        'question': '-82 - (-30) =',
        'options': ['-52', '-54', '-110', '-112'],
        'correctIndex': 0,
      },
          {
            'question': '11 - 9 =',
            'options': ['7', '2', '3', '20'],
            'correctIndex': 1,
          },
      {
        'question': '-19 - (-9) =',
        'options': ['-10', '-12', '-28', '-30'],
        'correctIndex': 0,
      },
          {
            'question': '26 - 14 =',
            'options': ['12', '10', '-16', '18'],
            'correctIndex': 0,
          },
      {
        'question': '-28 - (-11) =',
        'options': ['-17', '-15', '-37', '-39'],
        'correctIndex': 0,
      },
          {
            'question': '39 - 27 =',
            'options': ['12', '10', '13', '11'],
            'correctIndex': 0,
          },
      {
        'question': '-44 - (-17) =',
        'options': ['-27', '-25', '-60', '-62'],
        'correctIndex': 0,
      },
          {
            'question': '53 - 41 =',
            'options': ['12', '10', '11', '-13'],
            'correctIndex': 0,
          },
      {
        'question': '-55 - (-25) =',
        'options': ['-30', '-28', '-78', '-80'],
        'correctIndex': 0,
      },
          {
            'question': '64 - 46 =',
            'options': ['18', '16', '-20', '22'],
            'correctIndex': 0,
          },
      {
        'question': '-68 - (-32) =',
        'options': ['-36', '-34', '-98', '-100'],
        'correctIndex': 0,
      },
          {
            'question': '79 - 63 =',
            'options': ['16', '17', '-18', '15'],
            'correctIndex': 1,
          },
      {
        'question': '-74 - (-29) =',
        'options': ['-45', '-43', '-101', '-103'],
        'correctIndex': 0,
      },
          {
            'question': '85 - 77 =',
            'options': ['7', '8', '-9', '6'],
            'correctIndex': 1,
          },
      {
        'question': '-81 - (-40) =',
        'options': ['-41', '-39', '-119', '-121'],
        'correctIndex': 0,
      },
          {
            'question': '98 - 80 =',
            'options': ['18', '16', '-20', '22'],
            'correctIndex': 0,
          },
      {
        'question': '-96 - (-56) =',
        'options': ['-40', '-38', '-150', '-152'],
        'correctIndex': 0,
      },
          {
            'question': '21 - 19 =',
            'options': ['1', '2', '-3', '40'],
            'correctIndex': 1,
          },
      {
        'question': '-22 - (-10) =',
        'options': ['-12', '-14', '-30', '-32'],
        'correctIndex': 0,
      },
          {
            'question': '34 - 21 =',
            'options': ['13', '12', '-13', '15'],
            'correctIndex': 0,
          },
      {
        'question': '-45 - (-19) =',
        'options': ['-26', '-24', '-62', '-64'],
        'correctIndex': 0,
      },
          {
            'question': '56 - 38 =',
            'options': ['18', '16', '17', '20'],
            'correctIndex': 0,
          },
      {
        'question': '-49 - (-23) =',
        'options': ['-26', '-24', '-70', '-72'],
        'correctIndex': 0,
      },
          {
            'question': '67 - 49 =',
            'options': ['18', '16', '-18', '20'],
            'correctIndex': 0,
          },
      {
        'question': '-71 - (-33) =',
        'options': ['-38', '-36', '-102', '-104'],
        'correctIndex': 0,
      },
          {
            'question': '88 - 69 =',
            'options': ['19', '18', '20', '-19'],
            'correctIndex': 0,
          },
      {
        'question': '-89 - (-50) =',
        'options': ['-39', '-37', '-137', '-139'],
        'correctIndex': 0,
      },
          {
            'question': '97 - 78 =',
            'options': ['19', '18', '17', '20'],
            'correctIndex': 0,
          },
      {
        'question': '-99 - (-59) =',
        'options': ['-40', '-38', '-156', '-158'],
        'correctIndex': 0,
      },
          {
            'question': '31 - 24 =',
            'options': ['7', '6', '-7', '9'],
            'correctIndex': 0,
          },
      {
        'question': '-32 - (-16) =',
        'options': ['-16', '-14', '-46', '-48'],
        'correctIndex': 0,
      },
          {
            'question': '48 - 35 =',
            'options': ['13', '12', '11', '-15'],
            'correctIndex': 0,
          },
      {
        'question': '-57 - (-28) =',
        'options': ['-29', '-27', '-83', '-85'],
        'correctIndex': 0,
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
          title: Text('Subtraction of Integers with Like sign'),
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