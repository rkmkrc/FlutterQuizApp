import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Classes/question.dart';
import 'package:flutter_quiz_app/constants.dart';

class QuestionNumbersWidget extends StatelessWidget {
  final List<Question> questionsList;
  final Question currentQuestion;
  const QuestionNumbersWidget(
      {Key? key, required this.questionsList, 
      required this.currentQuestion
      }): super(key: key);

  @override
  Widget build(BuildContext context) {
    final double padding = 12;
    return Container(
      height: 50,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: padding),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context,index) => Container(width: padding,),  // Space between numbers.
        itemCount: questionsList.length,
        itemBuilder: (context,index){
          final isSelected = currentQuestion == questionsList[index];
          return buildNumber(index: index, isSelected: isSelected);
        },
      ),
    );
  }
}

Widget buildNumber({required int index,required bool isSelected}) {
  final color = isSelected ? Colors.orange.shade500 : kSecondaryColor;

  return CircleAvatar(
    backgroundColor: color,
    child: Text(
      "${index + 1}",
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    ),
  );
}
