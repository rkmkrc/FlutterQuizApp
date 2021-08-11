import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Classes/question.dart';
import 'package:flutter_quiz_app/Classes/test.dart';

class Body extends StatelessWidget {
  final Test test;
  const Body({ 
    Key? key, 
    required this.test,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) => PageView.builder(
        itemCount: test.questions.length,
        itemBuilder: (context, index) {
          final question = test.questions[index];

          return buildQuestion(question: question);
        },
      );


Widget buildQuestion({required Question question}) => 
  Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            Image(image: AssetImage(question.imageUrl),),
            SizedBox(height: 32),
     /*       Expanded(
              child: OptionsWidget(
                question: question,
                onClickedOption: onClickedOption,
              ),
            ),*/
          ],
        ),
      );
}