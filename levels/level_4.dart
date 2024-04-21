import 'dart:math';
import 'package:flutter/material.dart';

class LevelPage4 extends StatefulWidget {
  @override
  _LevelPage4State createState() => _LevelPage4State();
}

class _LevelPage4State extends State<LevelPage4> {
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
            'question': '10 - (-3) =',
            'options': ['13', '3', '9', '7'],
            'correctIndex': 0,
          },
      {
        'question': '-15 - 5 =',
        'options': ['-10', '-5', '-25', '-20'],
        'correctIndex': 2,
      },
          {
            'question': '24 - (-12) =',
            'options': ['10', '16', '36', '12'],
            'correctIndex': 2,
          },
      {
        'question': '-20 - 4 =',
        'options': ['-24', '-10', '-25', '-16'],
        'correctIndex': 0,
      },
          {
            'question': '35 - (-20) =',
            'options': ['15', '5', '25', '55'],
            'correctIndex': 0,
          },
      {
        'question': '-25 - 10 =',
        'options': ['-15', '-5', '-35', '-20'],
        'correctIndex': 0,
      },
          {
            'question': '47 - (-29) =',
            'options': ['19', '76', '18', '17'],
            'correctIndex': 1,
          },
      {
        'question': '-36 - 7 =',
        'options': ['-29', '-33', '-30', '-43'],
        'correctIndex': 3,
      },
          {
            'question': '58 - (-33) =',
            'options': ['28', '15', '91', '25'],
            'correctIndex': 3,
          },
      {
        'question': '-40 - 12 =',
        'options': ['-22', '-52', '-32', '-28'],
        'correctIndex': 1,
      },
          {
            'question': '65 - (-42) =',
            'options': ['20', '23', '25', '107'],
            'correctIndex': 1,
          },
      {
        'question': '-54 - 21 =',
        'options': ['-33', '-31', '-75', '-73'],
        'correctIndex': 0,
      },
          {
            'question': '76 - (-59) =',
            'options': ['18', '15', '17', '135'],
            'correctIndex': 3,
          },
      {
        'question': '-63 - 18 =',
        'options': ['-81', '-41', '-85', '-45'],
        'correctIndex': 2,
      },
          {
            'question': '84 - (-37) =',
            'options': ['50', '121', '47', '57'],
            'correctIndex': 2,
          },
      {
        'question': '-70 - 22 =',
        'options': ['-88', '-52', '-48', '-92'],
        'correctIndex': 2,
      },
          {
            'question': '92 - (-50) =',
            'options': ['142', '48', '42', '142*'],
            'correctIndex': 3,
          },
      {
        'question': '-82 - 30 =',
        'options': ['-54', '-110', '-112', '-52'],
        'correctIndex': 3,
      },
          {
            'question': '11 - (-9) =',
            'options': ['20', '3', '2', '4'],
            'correctIndex': 0,
          },
      {
        'question': '-19 - 9 =',
        'options': ['-10', '-12', '-28', '-30'],
        'correctIndex': 2,
      },
          {
            'question': '26 - (-14) =',
            'options': ['16', '12', '40', '18'],
            'correctIndex': 2,
          },
      {
        'question': '-28 - 11 =',
        'options': ['-39', '-17', '-37', '-15'],
        'correctIndex': 1,
      },
          {
            'question': '39 - (-27) =',
            'options': ['66', '12', '11', '13'],
            'correctIndex': 0,
          },
      {
        'question': '-44 - 17 =',
        'options': ['-25', '-27', '-61', '-60'],
        'correctIndex': 2,
      },
          {
            'question': '53 - (-41) =',
            'options': ['94', '11', '12', '13'],
            'correctIndex': 0,
          },
      {
        'question': '-55 - 25 =',
        'options': ['-80', '-78', '-28', '-30'],
        'correctIndex': 1,
      },
          {
            'question': '64 - (-46) =',
            'options': ['110', '20', '16', '18'],
            'correctIndex': 0,
          },
      {
        'question': '-68 - 32 =',
        'options': ['-36', '-98', '-100', '-126'],
        'correctIndex': 3,
      },
          {
            'question': '79 - (-63) =',
            'options': ['142', '15', '18', '16'],
            'correctIndex': 1,
          },
      {
        'question': '-74 - 29 =',
        'options': ['-101', '-103', '-45', '-43'],
        'correctIndex': 0,
      },
          {
            'question': '85 - (-77) =',
            'options': ['162', '8', '6', '9'],
            'correctIndex': 0,
          },
      {
        'question': '-81 - 40 =',
        'options': ['-41', '-119', '-121', '-39'],
        'correctIndex': 3,
      },
          {
            'question': '98 - (-80) =',
            'options': ['178', '16', '20', '18'],
            'correctIndex': 0,
          },
      {
        'question': '-96 - 56 =',
        'options': ['-38', '-152', '-150', '-40'],
        'correctIndex': 3,
      },
          {
            'question': '21 - (-19) =',
            'options': ['40', '3', '2', '4'],
            'correctIndex': 0,
          },
      {
        'question': '-22 - 10 =',
        'options': ['-32', '-14', '-30', '-12'],
        'correctIndex': 0,
      },
          {
            'question': '34 - (-21) =',
            'options': ['55', '12', '11', '13'],
            'correctIndex': 0,
          },
      {
        'question': '-45 - 19 =',
        'options': ['-64', '-24', '-62', '-26'],
        'correctIndex': 0,
      },
          {
            'question': '56 - (-38) =',
            'options': ['94', '17', '16', '18'],
            'correctIndex': 0,
          },
      {
        'question': '-49 - 23 =',
        'options': ['-72', '-26', '-70', '-24'],
        'correctIndex': 0,
      },
          {
            'question': '67 - (-49) =',
            'options': ['116', '18', '17', '16'],
            'correctIndex': 0,
          },
      {
        'question': '-71 - 33 =',
        'options': ['-104', '-102', '-38', '-36'],
        'correctIndex': 0,
      },
          {
            'question': '88 - (-69) =',
            'options': ['157', '19', '20', '18'],
            'correctIndex': 0,
          },
      {
        'question': '-89 - 50 =',
        'options': ['-139', '-36', '-137', '-39'],
        'correctIndex': 0,
      },
          {
            'question': '97 - (-78) =',
            'options': ['18', '19', '175', '176'],
            'correctIndex': 3,
          },
      {
        'question': '-99 - 59 =',
        'options': ['-158', '-160', '-40', '-41'],
        'correctIndex': 0,
      },
          {
            'question': '31 - (-24) =',
            'options': ['7', '55', '6', '57'],
            'correctIndex': 1,
          },
      {
        'question': '-32 - 16 =',
        'options': ['-48', '-14', '-16', '-18'],
        'correctIndex': 0,
      },
          {
            'question': '48 - (-35) =',
            'options': ['83', '12', '11', '13'],
            'correctIndex': 0,
          },
      {
        'question': '-57 - 28 =',
        'options': ['-29', '-83', '-30', '-85'],
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