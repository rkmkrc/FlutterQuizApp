import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Classes/test.dart';
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
              SizedBox(height: size.height * 0.03,),
              Container(
                margin: EdgeInsets.all(15),
                alignment: Alignment.topCenter,
                child: Text(
                  test.testName,
                  style: GoogleFonts.comfortaa(
                    textStyle: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
