import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Screens/Welcome/components/background.dart';
//import 'package:flutter_svg/svg.dart';



class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     // This size provide us total height and weight of screen.
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[Text("Bilsoft Quiz",
        style: TextStyle(fontWeight: FontWeight.bold),
        ),
      //  SvgPicture.asset("assets/icons/chat.svg")
        ],
      ),
    );
  }
}

