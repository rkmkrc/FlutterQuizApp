import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Classes/test.dart';
import 'package:flutter_quiz_app/Screens/Courses/courses_screen.dart';
import 'package:flutter_quiz_app/Screens/Questions/QuizWithQuestions/controllers/question_controller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ScoreScreen extends StatelessWidget {
  final Test test;
  const ScoreScreen({Key? key, required this.test}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _questionController =
        Get.put(QuestionController(test: test, questions: test.questions));

    Size size = MediaQuery.of(context).size;
    return new WillPopScope(
        onWillPop: () async => false,
            child: Material(
              type: MaterialType.transparency,
              child: new Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      test.leftOfTestButtonColorForTest,
                      test.rightOfTestButtonColorForTest
                    ],
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Column(
                      children: <Widget>[
                        SizedBox(
                          height: size.height * 0.17,
                        ),
                        Container(
                          margin: EdgeInsets.all(15),
                          alignment: Alignment.topCenter,
                          child: Text(
                            "Test Bitti",
                            style: GoogleFonts.comfortaa(
                              textStyle: TextStyle(
                                fontSize: 42,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: size.height * 0.035),
                        Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.checkCircle,
                              color: Colors.white,
                              size: 26,
                            ),
                            Text(
                              " Doğru: ${_questionController.numOfCorrectAns}",
                              style: GoogleFonts.comfortaa(
                                textStyle: TextStyle(
                                  fontSize: 22,
                                  //fontStyle: FontStyle.italic,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.timesCircle,
                              color: Colors.white,
                              size: 26,
                            ),
                            Text(
                              " Yanlış: ${_questionController.questions.length - (_questionController.numOfCorrectAns + _questionController.numOfBlankAns)}",
                              style: GoogleFonts.comfortaa(
                                textStyle: TextStyle(
                                  fontSize: 22,
                                  //fontStyle: FontStyle.italic,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 14),
                        Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.mehBlank,
                              color: Colors.white,
                              size: 26,
                            ),
                            Text(
                              "  Boş: ${_questionController.numOfBlankAns}",
                              style: GoogleFonts.comfortaa(
                                textStyle: TextStyle(
                                  fontSize: 22,
                                  //fontStyle: FontStyle.italic,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 14,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.105,
                        ),
                        Text(
                          "\"${_questionController.isGoodResult()}\"",
                          style: GoogleFonts.comfortaa(
                            textStyle: TextStyle(
                              fontSize: 22,
                              fontStyle: FontStyle.italic,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.12,
                        ),
                        Text(
                          "Kazanılan Puan: ${_questionController.numOfCorrectAns * 10 - ((_questionController.questions.length - (_questionController.numOfCorrectAns + _questionController.numOfBlankAns)) * 5)}",
                          style: GoogleFonts.comfortaa(
                            textStyle: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: size.height * 0.05),
                        FloatingActionButton(
                          onPressed: () {
                           
                        //    provider.addData(8,_questionController.numOfCorrectAns * 10);
                            print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
                            
                            print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return CoursesScreen(); // For testing purposes, later should be changed. Decides itself according to user sign in feature.
                                },
                              ),
                            );
                          },
                          child: const Icon(Icons.home),
                          backgroundColor: Colors.black45,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ));
/*
    return Scaffold(
      
      body: Stack(
        
        fit: StackFit.expand,
        children: [
          
          SvgPicture.asset(
            "assets/images/questionsBackground.svg",
            fit: BoxFit.fill,
          ),
          Column(
            
            children: [
              Spacer(
                flex: 3,
              ),
              Text(
                "Skor",
                style: Theme.of(context).textTheme.headline3,
              ),
              Spacer(),
              Text(
                "${_questionController.numOfCorrectAns * 10}/ ${_questionController.questions.length * 10}",
                style: Theme.of(context).textTheme.headline3,
              ),
              Spacer(
                flex: 3,
              ),
            ],
          ),
        ],
      ),
    );  */
  }
}
