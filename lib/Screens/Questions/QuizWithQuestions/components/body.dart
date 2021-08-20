import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Classes/test.dart';
import 'package:flutter_quiz_app/Screens/Questions/QuizWithQuestions/components/question_card_builder.dart';
import 'package:flutter_quiz_app/Screens/Questions/QuizWithQuestions/components/question_numbers_widget.dart';
import 'package:flutter_quiz_app/Screens/Questions/QuizWithQuestions/components/timer_bar.dart';
import 'package:flutter_quiz_app/Screens/Questions/QuizWithQuestions/controllers/question_controller.dart';
import 'package:flutter_quiz_app/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Body extends StatelessWidget {
  final Test test;
  const Body({Key? key, required this.test}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    QuestionController _questionController = Get.put(QuestionController(
        questions: test.questions, durationForTest: test.durationForTest));
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset(
            "assets/images/questionsBackground.svg",
            fit: BoxFit.fill,
          ),
          SafeArea(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 15),
                  child: Obx( () => QuestionNumbersWidget(
                    questionsList: test.questions,
                    currentQuestion: test.questions[
                        _questionController.questionNumber.value-1], // Update currentQue. all the time to change highlighted num.
                  ),)
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: TimerBar(test: test),
                ),
                SizedBox(height: 15),
                Expanded(
                    child: PageView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      controller: _questionController.pageController,
                      onPageChanged: _questionController.updateQuestionNumber,
                      itemCount: _questionController.questions.length,
                  itemBuilder: (context, index) =>
                      QuizScreenQuestionCardBuilder(
                    test: test,
                    size: size,
                    question: _questionController.questions[index],
                  ),
                ))

                //QuizScreenOptionBuilder(size: size),  // if u want seperate options from image
              ],
            ),
          ),
        ],
      ),
    );
  }
}
