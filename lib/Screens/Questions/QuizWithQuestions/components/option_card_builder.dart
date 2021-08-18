import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/constants.dart';

class QuizScreenOptionBuilder extends StatelessWidget {
  const QuizScreenOptionBuilder({
    Key? key,
    required this.size, required this.text,required this.code,required this.press,
  }) : super(key: key);

  final Size size;
  final String text;
  final String code;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(top: kDefaultPadding),
        width: size.width * 0.7,
        padding: EdgeInsets.all(kDefaultPadding),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: kGrayColor),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "$code.  $text ",
              style: TextStyle(color: Colors.black87, fontSize: 16),
            ),
            Container(
              height: 26,
              width: 26,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.black87),
              ),
            ),
          ],
        ),
      ),
    );
  }
}