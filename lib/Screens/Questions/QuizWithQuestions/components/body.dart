import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Classes/test.dart';
import 'package:flutter_quiz_app/Screens/Questions/QuizWithQuestions/components/question_numbers_widget.dart';
import 'package:flutter_quiz_app/Screens/Questions/QuizWithQuestions/components/timer_bar.dart';
import 'package:flutter_quiz_app/constants.dart';
import 'package:flutter_quiz_app/data/questions.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  final Test test;
  const Body({Key? key, required this.test}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset(
            "assets/images/questionsBackground.svg",
            fit: BoxFit.fill,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: QuestionNumbersWidget(
                      questionsList: test.questions,
                      currentQuestion: test.questions[1],           // Update currentQue. all the time to change highlighted num.
                    ),
                  ),
                  SizedBox(height: 0),
                  TimerBar(test: test),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

