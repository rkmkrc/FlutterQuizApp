import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Screens/Login/components/background.dart';
import 'package:flutter_quiz_app/Screens/Question/components/option.dart';
import 'package:flutter_quiz_app/Screens/Question/components/question.dart';
import 'package:flutter_quiz_app/Screens/Question/components/test.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  final Test test;
  const Body({Key? key, required this.test}) : super(key: key);

  @override
  Widget build(BuildContext context) => PageView.builder(
        itemCount: test.questions.length,
        itemBuilder: (context, index) {
          final question = test.questions[index];
          return buildQuestion(question: question);
        },
      );
}

Widget buildQuestion({required Question question}) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 32),
        Text(
          question.text,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Image(
          image: AssetImage("assets/questions/testIcon.png"),
        ),
        const SizedBox(height: 32),
        Expanded(
          child: OptionsWidget(
            question: question,
            onClickedOption: onClickedOption,
          ),
        ),
      ],
    );

Widget buildAnswer(Option option) => Container(
      height: 50,
      child: Row(
        children: [
          Text(
            option.code,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text(
            " " + option.text,
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );


/*
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Text(
        "QuestionPage",
      ),
    );
  }
**/ 

 /*  Expanded(
          child: OptionsWidget(
            question: question,
            onClickedOption: (){},
          ),
        ),*/