import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final void Function() press;      // Differs with tutorial.
  final Color color, textColor;
  const RoundedButton({
    Key? key, 
    required this.text, 
    required this.press, 
    this.color = kPrimaryColor, 
    this.textColor = Colors.white,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      width: size.width * 0.71,
      child: ClipRRect(  
        borderRadius: BorderRadius.circular(29),
        child: TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            backgroundColor: color,
          ),
          onPressed: press, 
          child: Text(text,
          style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}

