import 'package:flutter/animation.dart';
import 'package:flutter_quiz_app/Classes/option.dart';
import 'package:flutter_quiz_app/Classes/question.dart';
import 'package:flutter_quiz_app/data/questions.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:flutter_quiz_app/data/mathTests.dart';


class QuestionController extends GetxController
    with SingleGetTickerProviderMixin {
  late AnimationController _animationController;
  late Animation _animation;
  final int durationForTest;
  final List<Question> questions;

  QuestionController( {required this.questions,required this.durationForTest});

  Animation get animation => this._animation;

  List<Question> get getQuestions => this.questions;     // user.....questions in fact

  @override
  void onInit() {
    _animationController =
        AnimationController(duration: Duration(seconds: durationForTest), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        update();
      });
    _animationController.forward();
    super.onInit();
  }
}
