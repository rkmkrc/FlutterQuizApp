import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Screens/Authenticate/sign_in.dart';
import 'package:flutter_quiz_app/Screens/Login/login_screen.dart';
import 'package:flutter_quiz_app/Screens/Signup/components/background.dart';
import 'package:flutter_quiz_app/Screens/Signup/components/or_divider.dart';
import 'package:flutter_quiz_app/Screens/Signup/components/social_icons.dart';
import 'package:flutter_quiz_app/Screens/Widgets/loading_widget.dart';
import 'package:flutter_quiz_app/Services/auth.dart';
import 'package:flutter_quiz_app/components/already_have_an_account_check.dart';
import 'package:flutter_quiz_app/components/rounded_button.dart';
import 'package:flutter_quiz_app/components/rounded_input_field.dart';
import 'package:flutter_quiz_app/components/rounded_password_field.dart';
import 'package:flutter_quiz_app/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Register extends StatefulWidget {
  final Function toggleView;
  const Register({Key? key, required this.toggleView}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  double _currentSliderValue = 2;
  bool loading = false;
  // text field state
  String username = '';
  String email = '';
  String password = '';
  String error = '';
  int grade = 2;

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
                "KAYDOL",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
    /*          SvgPicture.asset(
                "assets/icons/signup.svg",
                height: size.height * 0.3,
              ),
    */        RoundedInputField(
                hintText: "Kullanıcı Adı",
                onChanged: (value) {
                  setState(() => username = value);
                },
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
              Padding(
                padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                child: Slider(
                  value: _currentSliderValue, 
                  min: 2,
                  max: 8,
                  divisions: 6,
                  activeColor: Colors.purple[_currentSliderValue.round() * 100],
                  inactiveColor: Colors.purple[_currentSliderValue.round() * 100],
                  label: _currentSliderValue.round().toString()+ ".Sınıf",
                  
                  onChanged: (val) => setState(() => {
                    _currentSliderValue = val,
                    grade = val.round(),
                    }),
                ),
              ),
              RoundedButton(
                text: "KAYDOL",
                press: () async {
                  if (_formKey.currentState!.validate()) {
                    setState(() => loading = true);
                    dynamic result = await _auth.registerWithEmailAndPassword(username,
                        email, password, grade);
                    if (result == null) {
                      setState(() {
                        error = "Lütfen geçerli bir e-posta giriniz.";
                        loading = false;
                      });
                    }
                  }
                },
              ),
              SizedBox(height: size.height * 0.0025),
              Text(
                error,
                style: TextStyle(color: Colors.red, fontSize: 14.0),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              AlreadyHaveAnAccountCheck(
                login: false,
                press: () {
                  widget.toggleView();
                },
              ),
              /*             OrDivider(),
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
              )                   */
            ],
          ),
        ),
      ),
    );
  }
}
