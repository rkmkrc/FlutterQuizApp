import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_quiz_app/Classes/userclass.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  //create user obj based on FirebaseUser

  UserClass _userFromFirebaseUser(User user){   
    return UserClass(uid: user.uid);
  }
  //auth change user stream

  Stream<UserClass?> get user {
    return _auth
        .authStateChanges()
        .map((User? user) => _userFromFirebaseUser(user!));
  }
  //sign in anon

  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userFromFirebaseUser(user!);
    } catch (e) {
      print(e.toString());
      return null ;
    }
  }

  //sign in with email and password

  //register with email and passworrd

  //sign out

  Future signOut() async{
    try{
      return await _auth.signOut();
    }catch(e){
      print(e.toString());
    }
  }
}
