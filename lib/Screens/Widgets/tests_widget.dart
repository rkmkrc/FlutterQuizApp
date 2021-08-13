import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Classes/test.dart';
import 'package:flutter_quiz_app/Screens/Welcome/welcome_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TestsWidget extends StatelessWidget {
  final Test test;
  const TestsWidget({ Key? key, required this.test }) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => WelcomeScreen(),
        )),
        child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [test.leftOfTestButtonColorForTest, test.rightOfTestButtonColorForTest],    
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(
                test.icon,
                color: Colors.white,
                size: 36,
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                test.testName,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      );
}

