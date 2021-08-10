import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Screens/Question/components/option.dart';
import 'package:flutter_quiz_app/Screens/Question/components/question.dart';

class OptionsWidget extends StatelessWidget {
  final Question question;
  final ValueChanged<Option> onClickedOption;

  const OptionsWidget(
      {Key? key, required this.question, required this.onClickedOption})
      : super(key: key);

  @override
  Widget build(BuildContext context) => ListView(
        physics: BouncingScrollPhysics(),
        children: Utils.heightBetween(
          question.options
              .map((option) => buildOption(context, option))
              .toList(),
          height: 8,
        ),
      );

  buildOption(BuildContext context, Option option) {
    return buildAnswer(option);
  }

  buildAnswer(Option option) => Container(
      height: 50,
      child: Row(
        children: [
          Text(
            option.code,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            option.text,
            style: TextStyle(fontSize: 20),
          ),
        ],
      ));
}
