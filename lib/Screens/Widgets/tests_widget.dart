import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Classes/test.dart';
import 'package:flutter_quiz_app/Screens/Questions/test_starting_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TestsWidget extends StatefulWidget {
  final Test test;
  const TestsWidget({ Key? key, required this.test }) : super(key: key);

  @override
  _TestsWidgetState createState() => _TestsWidgetState();
}

class _TestsWidgetState extends State<TestsWidget> {
  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => TestStartingPage(startingTest: widget.test),
        )),
        child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [widget.test.leftOfTestButtonColorForTest, widget.test.rightOfTestButtonColorForTest],    
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(
                widget.test.icon,
                color: Colors.white,
                size: 36,
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                widget.test.testName,
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

