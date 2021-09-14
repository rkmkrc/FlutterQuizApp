import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Classes/test.dart';
import 'package:flutter_quiz_app/Screens/Courses/courses_screen.dart';
import 'package:flutter_quiz_app/Screens/Questions/QuizWithQuestions/controllers/question_controller.dart';
import 'package:flutter_quiz_app/Services/auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ScoreScreenBody extends StatefulWidget {
  final Test test;
  const ScoreScreenBody({Key? key, required this.test}) : super(key: key);

  @override
  _ScoreScreenBodyState createState() => _ScoreScreenBodyState();
}

class _ScoreScreenBodyState extends State<ScoreScreenBody> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    QuestionController _questionController =
        Get.put(QuestionController(test: widget.test,));

    Size size = MediaQuery.of(context).size;

    final users = Provider.of<QuerySnapshot?>(context);

    int userGradeFromDatabase = 2;
    String userNameFromDatabase = "";
    int userPointsFromDatabase = 0;

    if (users != null) {
      for (var doc in users.docs) {
        if (doc.id == _auth.getUserUidFromAuthService()) {
          userGradeFromDatabase = doc.get("grade");
          userNameFromDatabase = doc.get("username");
          userPointsFromDatabase = doc.get("points");
        }
      }
    }

   int earnedPoints = _questionController.numOfCorrectAns * 10 
    - ((_questionController.test.questions.length 
    - (_questionController.numOfCorrectAns 
    + _questionController.numOfBlankAns)) * 5);

    return new WillPopScope(
        onWillPop: () async => false,
            child: Material(
              type: MaterialType.transparency,
              child: new Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      widget.test.leftOfTestButtonColorForTest,
                      widget.test.rightOfTestButtonColorForTest
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
                              " Yanlış: ${_questionController.test.questions.length - (_questionController.numOfCorrectAns + _questionController.numOfBlankAns)}",
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
                          "Kazanılan Puan: ${_questionController.numOfCorrectAns * 10 - ((_questionController.test.questions.length - (_questionController.numOfCorrectAns + _questionController.numOfBlankAns)) * 5)}",
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
                            _auth.updateUserPointsFromAuthService(
                              userNameFromDatabase, 
                              userGradeFromDatabase, 
                              userPointsFromDatabase 
                              + earnedPoints);
                            print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
                   /*         Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return CoursesScreen(); // For testing purposes, later should be changed. Decides itself according to user sign in feature.
                                },
                              ),
                            );*/
                           // ignore: invalid_use_of_protected_member
                       //    _questionController.pageController.removeListener(() { });
                          
                           Navigator.pop(context);
                           Navigator.pop(context);
                           Navigator.pop(context);
                           Navigator.pop(context);
                    
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
