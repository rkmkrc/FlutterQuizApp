import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_quiz_app/constants.dart';

class RoundedStartButton extends StatelessWidget {
  final String text;
  final Color color, textColor;
  const RoundedStartButton({
    Key? key, 
    required this.text,  
    this.color = Colors.white70,
    this.textColor = Colors.black
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
          onPressed: (){},                           // Handle it.
          child: Text(text,
          style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

