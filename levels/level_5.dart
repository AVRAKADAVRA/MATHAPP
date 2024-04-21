import 'dart:math';
import 'package:flutter/material.dart';

class LevelPage5 extends StatefulWidget {
  @override
  _LevelPage5State createState() => _LevelPage5State();
}

class _LevelPage5State extends State<LevelPage5> {
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
            'question': '68 + (-53) =',
            'options': ['115', '121', '15', '16'],
            'correctIndex': 2,
          },
      {
        'question': '-59 - 32 =',
        'options': ['-22', '-27', '-91', '-31'],
        'correctIndex': 2,
      },
          {
            'question': '71 + (-64) =',
            'options': ['135', '137', '7', '8'],
            'correctIndex': 2,
          },
      {
        'question': '-62 + 29 =',
        'options': ['-31', '-33', '-91', '-34'],
        'correctIndex': 1,
      },
          {
            'question': '83 - (-48) =',
            'options': ['36', '131', '35', '39'],
            'correctIndex': 1,
          },
      {
        'question': '-75 + 33 =',
        'options': ['-42', '-40', '-43', '-108'],
        'correctIndex': 0,
      },
          {
            'question': '93 - (-41) =',
            'options': ['134', '50', '52', '53'],
            'correctIndex': 0,
          },
      {
        'question': '-81 + 50 =',
        'options': ['-31', '-32', '-35', '-131'],
        'correctIndex': 0,
      },
          {
            'question': '16 + (-14) =',
            'options': ['2', '26', '3', '30'],
            'correctIndex': 0,
          },
      {
        'question': '-18 - 19 =',
        'options': ['-17', '-37', '0', '1'],
        'correctIndex': 1,
      },
          {
            'question': '27 + (-13) =',
            'options': ['14', '15', '40', '41'],
            'correctIndex': 0,
          },
      {
        'question': '-29 - 22 =',
        'options': ['-5', '-7', '-8', '-51'],
        'correctIndex': 3,
      },
          {
            'question': '34 + (-28) =',
            'options': ['6', '62', '66', '7'],
            'correctIndex': 0,
          },
      {
        'question': '-49 + 26 =',
        'options': ['-23', '-24', '-72', '-75'],
        'correctIndex': 0,
      },
          {
            'question': '52 - (-39) =',
            'options': ['13', '14', '91', '93'],
            'correctIndex': 2,
          },
      {
        'question': '-54 + 35 =',
        'options': ['-20', '-89', '-90', '-19'],
        'correctIndex': 3,
      },
          {
            'question': '63 + (-57) =',
            'options': ['120', '122', '6', '7'],
            'correctIndex': 2,
          },
      {
        'question': '-68 + 47 =',
        'options': ['-115', '-117', '-21', '-22'],
        'correctIndex': 2,
      },
          {
            'question': '74 - (-65) =',
            'options': ['139', '141', '9', '10'],
            'correctIndex': 0,
          },
      {
        'question': '-79 - 46 =',
        'options': ['-125', '-31', '-33', '-34'],
        'correctIndex': 0,
      },
          {
            'question': '86 + (-82) =',
            'options': ['166', '168', '4', '5'],
            'correctIndex': 2,
          },
      {
        'question': '-88 + 60 =',
        'options': ['-148', '-150', '-29', '-28'],
        'correctIndex': 3,
      },
          {
            'question': '95 - (-85) =',
            'options': ['10', '11', '180', '182'],
            'correctIndex': 2,
          },
      {
        'question': '-91 - 66 =',
        'options': ['-157', '-23', '-25', '-26'],
        'correctIndex': 0,
      },
          {
            'question': '13 + (-12) =',
            'options': ['1', '2', '25', '26'],
            'correctIndex': 1,
          },
      {
        'question': '-15 - 17 =',
        'options': ['-32', '-2', '-1', '2'],
        'correctIndex': 0,
      },
          {
            'question': '32 + (-29) =',
            'options': ['3', '4', '61', '63'],
            'correctIndex': 0,
          },
      {
        'question': '-48 + 19 =',
        'options': ['-29', '-30', '-67', '-69'],
        'correctIndex': 0,
      },
          {
            'question': '51 + (-49) =',
            'options': ['2', '3', '100', '102'],
            'correctIndex': 0,
          },
      {
        'question': '-55 - 23 =',
        'options': ['-78', '-32', '-33', '-30'],
        'correctIndex': 0,
      },
          {
            'question': '64 + (-61) =',
            'options': ['3', '4', '125', '127'],
            'correctIndex': 0,
          },
      {
        'question': '-72 + 54 =',
        'options': ['-18', '-19', '-126', '-128'],
        'correctIndex': 0,
      },
          {
            'question': '89 - (-78) =',
            'options': ['11', '12', '167', '169'],
            'correctIndex': 2,
          },
      {
        'question': '-89 - 50 =',
        'options': ['-139', '-36', '-39', '-38'],
        'correctIndex': 0,
      },
          {
            'question': '97 + (-78) =',
            'options': ['18', '19', '175', '176'],
            'correctIndex': 3,
          },
      {
        'question': '-99 + 59 =',
        'options': ['-158', '-160', '-40', '-41'],
        'correctIndex': 2,
      },
          {
            'question': '31 + (-24) =',
            'options': ['55', '57', '6', '7'],
            'correctIndex': 1,
          },
      {
        'question': '-32 - 16 =',
        'options': ['-18', '-48', '-14', '-16'],
        'correctIndex': 3,
      },
          {
            'question': '48 + (-35) =',
            'options': ['12', '13', '83', '85'],
            'correctIndex': 2,
          },
      {
        'question': '-57 + 28 =',
        'options': ['-29', '-30', '-85', '-87'],
        'correctIndex': 0,
      },
          {
            'question': '12 + (-3) =',
            'options': ['5', '15', '9', '9'],
            'correctIndex': 3,
          },
      {
        'question': '-14 + 6 =',
        'options': ['-20', '-7', '-22', '-8'],
        'correctIndex': 3,
      },
          {
            'question': '23 - (-17) =',
            'options': ['40', '36', '6', '10'],
            'correctIndex': 0,
          },
      {
        'question': '-21 + 9 =',
        'options': ['-10', '-15', '-12', '-30'],
        'correctIndex': 2,
      },
          {
            'question': '30 + (-25) =',
            'options': ['50', '5', '6', '55'],
            'correctIndex': 1,
          },
      {
        'question': '-24 + 15 =',
        'options': ['-20', '-10', '-9', '-39'],
        'correctIndex': 2,
      },
          {
            'question': '42 + (-36) =',
            'options': ['8', '6', '12', '78'],
            'correctIndex': 3,
          },
      {
        'question': '-31 - 18 =',
        'options': ['-13', '-49', '-12', '-15'],
        'correctIndex': 1,
      },
          {
            'question': '57 + (-22) =',
            'options': ['25', '79', '36', '35'],
            'correctIndex': 3,
          },
      {
        'question': '-43 - 13 =',
        'options': ['-25', '-31', '-30', '-56'],
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
          title: Text('Addition and Subtraction of Integers'),
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