import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Screens/Login/components/background.dart';
import 'package:flutter_quiz_app/components/rounded_input_field.dart';
import 'package:flutter_quiz_app/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[Text(
        "Giriş Yap", 
        style: TextStyle(
          fontWeight: FontWeight.bold),
          ),
          SvgPicture.asset("assets/icons/login.svg", 
          height: size.height * 0.35,
          ),
          RoundedInputField(
            hintText: "Email",
            onChanged: (value) {},
          )
        ],
      ),
    );
  }
}

