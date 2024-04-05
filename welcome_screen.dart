import 'package:flutter/material.dart';
import 'game_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:math_app/constants.dart';

class WelcomeScreen extends StatelessWidget {
  static final id = 'welcome_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/ihfnlpbze7o01.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            Navigator.pushNamed(context, GameScreen.id);
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: AnimatedTextKit(
                  animatedTexts: [
                    ColorizeAnimatedText(
                      'Math Quiz \nGame',
                      textAlign: TextAlign.center,
                      textStyle: kAnimationTextStyle,
                      colors: kColorizedAnimationColors,
                    ),
                  ],
                  repeatForever: true,
                ),
              ),
              Text(
                'Tap to Start',
                textAlign: TextAlign.center,
                style: kTapToStartText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
