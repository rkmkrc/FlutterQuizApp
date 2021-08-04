import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Screens/Login/components/background.dart';
import 'package:flutter_quiz_app/Screens/Login/components/text_field_container.dart';
import 'package:flutter_quiz_app/components/already_have_an_account_check.dart';
import 'package:flutter_quiz_app/components/rounded_button.dart';
import 'package:flutter_quiz_app/components/rounded_input_field.dart';
import 'package:flutter_quiz_app/components/rounded_password_field.dart';
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
      children: <Widget>[
          Text(
            "Giriş Yap", 
            style: TextStyle(
            fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.03,),
          SvgPicture.asset("assets/icons/login.svg", 
          height: size.height * 0.2,
          ),
          SizedBox(height: size.height * 0.03,),
          RoundedInputField(
            hintText: "Email",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "Giriş Yap", 
            press: () {},
            ),
            SizedBox(height: size.height * 0.015),
            AlreadyHaveAnAccountCheck(
              press: () {},)
        ],
      ),
    );
  }
}

