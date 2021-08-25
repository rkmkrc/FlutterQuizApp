import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Classes/question.dart';
import 'package:flutter_quiz_app/Classes/test.dart';
import 'package:flutter_quiz_app/Screens/Questions/QuizWithQuestions/ScoreScreen/score_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class QuestionController extends GetxController
    with SingleGetTickerProviderMixin {
  late AnimationController _animationController;
  late Animation _animation;
  final Test test;
  final List<Question> questions;

  QuestionController({required this.questions, required this.test});

  Animation get animation => this._animation;

  late PageController _pageController;
  PageController get pageController => this._pageController;

  List<Question> get getQuestions =>
      this.questions; // user.....questions in fact

  bool _timeIsUpFlag = false;

  bool _isAnswered = false;
  bool get isAnswered => this._isAnswered;

  late int _correctAns;
  int get correctAns => this._correctAns;

  late int _selectedAns;
  int get selectedAns => this._selectedAns;

  // for more about obs please check documentation
  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => this._questionNumber;

  int _numOfCorrectAns = 0;
  int get numOfCorrectAns => this._numOfCorrectAns;

  int _numOfBlankAns = 0;
  int get numOfBlankAns => this._numOfBlankAns;

  int _numOfWrongAns = 0;
  int get numOfWrongAns => this._numOfWrongAns;
  
  @override
  void onInit() {
    _animationController = AnimationController(
        duration: Duration(seconds: test.durationForTest), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        update();
      });
    _animationController.forward().whenComplete(() => {
        _timeIsUpFlag = true,
        blankAnswerCounter(),
        Get.to(() => ScoreScreen(test: test,))
    });

    _pageController = PageController();

    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    _animationController.dispose();
    _pageController.dispose();
  }
  void blankAnswerCounter(){
    if(_timeIsUpFlag){
      _numOfBlankAns = questions.length - _questionNumber.value + 1;
      _numOfWrongAns = questions.length - _numOfCorrectAns - _numOfBlankAns ;
    }
    else{_numOfBlankAns = 0;
    _numOfWrongAns = questions.length - _numOfCorrectAns - _numOfBlankAns ;} 
  }

  void checkAnswer(Question question, int selectedIndex) {
    _isAnswered = true;
    _correctAns = question.answerIndex;
    _selectedAns = selectedIndex;

    if (_correctAns == _selectedAns) _numOfCorrectAns++;
  //  _animationController.stop();
    update();

    Future.delayed(Duration(milliseconds: 650), () {
      nextQuestion();
    });
  }

  void nextQuestion() {
    if (_questionNumber.value != questions.length) {
      _isAnswered = false;
      _pageController.nextPage(
          duration: Duration(milliseconds: 250), curve: Curves.ease);
     // _animationController.reset(); // Time does not supposed to be reset itself.
     // _animationController.forward(); // Commented in order to go to the score screen whenever time is up.
    } else {
      Get.to(() => ScoreScreen(test: test,));
    }
  }

  void updateQuestionNumber(int index){
    _questionNumber.value = index + 1 ;
  }

  String isGoodResult(){
    if(numOfCorrectAns > numOfWrongAns && numOfBlankAns <= 2){
      return  "Harika, böyle devam et." ;
    }
    return "Daha iyi olabilirsin.";
  }
}
