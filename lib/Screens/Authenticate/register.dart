import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Screens/Authenticate/sign_in.dart';
import 'package:flutter_quiz_app/Screens/Login/login_screen.dart';
import 'package:flutter_quiz_app/Screens/Signup/components/background.dart';
import 'package:flutter_quiz_app/Screens/Signup/components/or_divider.dart';
import 'package:flutter_quiz_app/Screens/Signup/components/social_icons.dart';
import 'package:flutter_quiz_app/Services/auth.dart';
import 'package:flutter_quiz_app/components/already_have_an_account_check.dart';
import 'package:flutter_quiz_app/components/rounded_button.dart';
import 'package:flutter_quiz_app/components/rounded_input_field.dart';
import 'package:flutter_quiz_app/components/rounded_password_field.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Register extends StatefulWidget {
  final Function toggleView;
  const Register({Key? key, required this.toggleView}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();

  // text field state
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "KAYDOL",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.3,
            ),
            RoundedInputField(
              hintText: "Email",
              onChanged: (value) {
                setState(() => email = value);
              },
            ),
            RoundedPasswordField(
              onChanged: (value) {
                setState(() => password = value);
              },
            ),
            RoundedButton(
              text: "KAYDOL",
              press: () async {
                print(email);
                print(password);
              },
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                widget.toggleView();  
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
