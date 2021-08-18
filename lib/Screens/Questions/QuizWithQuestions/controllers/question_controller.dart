import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_quiz_app/Classes/question.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class QuestionController extends GetxController
    with SingleGetTickerProviderMixin {
  late AnimationController _animationController;
  late Animation _animation;
  final int durationForTest;
  final List<Question> questions;

  QuestionController({required this.questions, required this.durationForTest});

  Animation get animation => this._animation;

  late PageController _pageController;
  PageController get pageController => this._pageController;

  List<Question> get getQuestions =>
      this.questions; // user.....questions in fact

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

  @override
  void onInit() {
    _animationController = AnimationController(
        duration: Duration(seconds: durationForTest), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        update();
      });
    _animationController.forward();

    _pageController = PageController();

    super.onInit();
  }

  void checkAnswer(Question question, int selectedIndex) {
    _isAnswered = true;
    _correctAns = question.answerIndex;
    _selectedAns = selectedIndex;

    if (_correctAns == _selectedAns) _numOfCorrectAns++;
    _animationController.stop();
    update();

    Future.delayed(Duration(milliseconds: 850), () {
      nextQuestion();
    });
  }


  
  void nextQuestion(){
    if(_questionNumber.value != questions.length){
      _isAnswered = false;
      _pageController.nextPage(
          duration: Duration(milliseconds: 250), curve: Curves.ease);
        //  _animationController.reset();   // Time does not supposed to be reset itself.
          _animationController.forward();
    }
  }
}
