import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Classes/test.dart';
import 'package:flutter_quiz_app/Screens/Questions/QuizWithQuestions/components/question_card_builder.dart';
import 'package:flutter_quiz_app/Screens/Questions/QuizWithQuestions/components/question_numbers_widget.dart';
import 'package:flutter_quiz_app/Screens/Questions/QuizWithQuestions/components/timer_bar.dart';
import 'package:flutter_quiz_app/Screens/Questions/QuizWithQuestions/controllers/question_controller.dart';
import 'package:flutter_quiz_app/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Body extends StatefulWidget {
  final Test test;
  const Body({Key? key, required this.test}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    setState(() {});
    Size size = MediaQuery.of(context).size;
    print(
        "*/*/*/*/*/*/*/*/*/*/*/*/*/*/  Above of Controller. */*/*/*/*/*/*/*/*/*/*/*/*/*/");
    print("Test name  :  " +
        widget.test.testName +
        " --- Duration: " +
        widget.test.durationForTest.toString());

    QuestionController _questionController =
        Get.put(QuestionController(test: widget.test));

    _questionController.resetAnimationAndStatisticalData();
    _questionController.onInit();
    widget.test.questions.shuffle();

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
                    padding: EdgeInsets.symmetric(vertical: 6, horizontal: 15),
                    child: Obx(
                      () => QuestionNumbersWidget(
                        questionsList: widget.test.questions,
                        currentQuestion: widget
                            .test.questions[_questionController
                                .questionNumber.value -
                            1], // Update currentQue. all the time to change highlighted num.
                      ),
                    )),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: TimerBar(test: widget.test),
                ),
                SizedBox(height: size.width * 0.018),
                Expanded(
                    child: PageView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        controller: _questionController.pageController,
                        onPageChanged: _questionController.updateQuestionNumber,
                        itemCount: _questionController.test.questions.length,
                        itemBuilder: (context, index) {
                          print("QSB Before :::::::::::  " +
                              widget.test.testName +
                              " :::::::::::::");
                          return QuizScreenQuestionCardBuilder(
                            test: widget.test,
                            size: size,
                            question: _questionController.test.questions[index],
                          );
                        }))

                //QuizScreenOptionBuilder(size: size),  // if u want seperate options from image
              ],
            ),
          ),
        ],
      ),
    );
  }
}
