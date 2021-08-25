import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundedStartButton extends StatelessWidget {
  final String text;
  final Color color, textColor;
  final void Function() press;
  const RoundedStartButton({
    Key? key,
    required this.text,
    this.color = Colors.white70,
    this.textColor = Colors.black,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      width: size.width * 0.55,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            backgroundColor: color,
          ),
          onPressed: press, // Handle it.
          child: Text(
            text,
            style: GoogleFonts.comfortaa(
              textStyle: TextStyle(
                color: textColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
