import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/Screens/Login/components/body.dart';
import 'package:flutter_quiz_app/google_sign_in_provider.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context) => GoogleSignInProvider(),
    child:Scaffold(
      body: Body(),
    ));
  
}

