import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Classes/test.dart';
import 'package:flutter_quiz_app/Screens/Questions/QuizWithQuestions/quiz_with_questions_screen.dart';
import 'package:flutter_quiz_app/components/rounded_start_button.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
  final Test test;
  const Body({Key? key, required this.test}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            test.leftOfTestButtonColorForTest,
            test.rightOfTestButtonColorForTest
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            children: <Widget>[
              SizedBox(
                height: size.height * 0.20,
              ),
              Container(
                margin: EdgeInsets.all(15),
                alignment: Alignment.topCenter,
                child: Text(
                  test.testName,
                  style: GoogleFonts.comfortaa(
                    textStyle: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Text(
                test.testGrade + ". Sınıf",
                style: GoogleFonts.comfortaa(
                  textStyle: TextStyle(
                    fontSize: 22,
                    //fontStyle: FontStyle.italic,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.25,
              ),
              Icon(
                Icons.border_color_rounded,
                color: Colors.white,
                size: 36,
              ),
              SizedBox(
                height: size.height * 0.035,
              ),
              Text(
                "Bu testte " +
                    test.questions.length.toString() +
                    " soru var." +
                    "\n\t\t\t\t\t  Hazır mısın?",
                style: GoogleFonts.comfortaa(
                  textStyle: TextStyle(
                    fontSize: 20,
                    //fontStyle: FontStyle.italic,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              RoundedStartButton(
                text: "BAŞLAT",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return QuizWithQuestionsScreen(test: test); // For testing purposes, later should be changed.
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
