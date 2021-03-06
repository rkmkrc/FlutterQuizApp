import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Classes/question.dart';
import 'package:flutter_quiz_app/Classes/test.dart';
import 'package:flutter_quiz_app/Screens/Questions/QuizWithQuestions/components/option_card_builder.dart';
import 'package:flutter_quiz_app/Screens/Questions/QuizWithQuestions/controllers/question_controller.dart';
import 'package:flutter_quiz_app/constants.dart';
import 'package:get/get.dart';

class QuizScreenQuestionCardBuilder extends StatelessWidget {
  const QuizScreenQuestionCardBuilder({
    Key? key,
    required this.test,
    required this.size,
    required this.question,
  }) : super(key: key);

  final Test test;
  final Question question;
  final Size size;

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController(
        test: test, questions: test.questions));
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(size.width * 0.04),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFF3F4768),
          width: 5.0,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        children: [
          Image.asset(
            question.imageUrl,
            height: size.height * 0.295,
          ),
          ...List.generate(
            question.options.length,
            (index) => QuizScreenOptionBuilder(
              // index 0 1 2 3 4 ...
              size: size,
              text: question.options[index].text,
              code: question.options[index].code,
              press: () => _controller.checkAnswer(question, index), test: test, index: index,
            ),
          ),
        ],
      ),
    );
  }
}
