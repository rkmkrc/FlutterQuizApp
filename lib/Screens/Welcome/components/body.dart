import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Screens/Login/login_screen.dart';
import 'package:flutter_quiz_app/Screens/Signup/signup_screen.dart';
import 'package:flutter_quiz_app/Screens/Welcome/components/background.dart';
import 'package:flutter_quiz_app/components/rounded_button.dart';
import 'package:flutter_quiz_app/constants.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and weight of screen.
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "BILSOFT QUIZ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.49,
            ),
            SizedBox(height: size.height * 0.045),
            RoundedButton(
              text: "Giriş Yap",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "Kaydol",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
