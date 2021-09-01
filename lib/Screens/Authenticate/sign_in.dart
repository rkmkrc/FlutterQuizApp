import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Screens/Authenticate/register.dart';
import 'package:flutter_quiz_app/Screens/Courses/courses_screen.dart';
import 'package:flutter_quiz_app/Screens/Login/components/background.dart';
import 'package:flutter_quiz_app/Screens/Signup/signup_screen.dart';
import 'package:flutter_quiz_app/Screens/Widgets/loading_widget.dart';
import 'package:flutter_quiz_app/Services/auth.dart';
import 'package:flutter_quiz_app/components/already_have_an_account_check.dart';
import 'package:flutter_quiz_app/components/rounded_button.dart';
import 'package:flutter_quiz_app/components/rounded_input_field.dart';
import 'package:flutter_quiz_app/components/rounded_password_field.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;

  const SignIn({
    Key? key,
    required this.toggleView,
  }) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  bool loading = false;
  // text field state
  String email = '';
  String password = '';
  String error = '';


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return loading ? Loading() : Background(
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Giriş Yap",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              SvgPicture.asset(
                "assets/icons/login.svg",
                height: size.height * 0.2,
              ),
              SizedBox(
                height: size.height * 0.03,
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
                text: "Giriş Yap",
                press: () async {
                  if (_formKey.currentState!.validate()) {
                    setState(() => loading = true);
                    dynamic result = await _auth.signInWithEmailAndPassword(email, password);
                    if (result == null) {
                      setState(
                          () {
                            error = "E-posta veya şifre yanlış.";
                            loading = false;
                          } );
                    }
                  }
                },
              ),
              SizedBox(height: size.height * 0.002),
              Text(
                error,
                style: TextStyle(color: Colors.red, fontSize: 14.0),
              ),
              SizedBox(height: size.height * 0.015),
              AlreadyHaveAnAccountCheck(
                press: () {
                  widget.toggleView();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}



/*

import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Screens/Authenticate/register.dart';
import 'package:flutter_quiz_app/Screens/Courses/courses_screen.dart';
import 'package:flutter_quiz_app/Screens/Login/components/background.dart';
import 'package:flutter_quiz_app/Services/auth.dart';
import 'package:flutter_quiz_app/components/already_have_an_account_check.dart';
import 'package:flutter_quiz_app/components/rounded_button.dart';
import 'package:flutter_quiz_app/components/rounded_input_field.dart';
import 'package:flutter_quiz_app/components/rounded_password_field.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

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
              "Giriş Yap",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.2,
            ),
            SizedBox(
              height: size.height * 0.03,
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
              text: "Giriş Yap",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return CoursesScreen(); // For testing purposes, later should be changed.
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.015),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Register();
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

*/