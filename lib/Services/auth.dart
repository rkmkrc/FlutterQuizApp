import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_quiz_app/Classes/userclass.dart';
import 'package:flutter_quiz_app/Services/database.dart';

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

  Future signInWithEmailAndPassword(String email, String password) async{
    try{
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      return _userFromFirebaseUser(user!); 
    }catch(e){
      print(e.toString());
      return null;
    }
  }

  //register with email and passworrd

  Future registerWithEmailAndPassword(String email, String password, int grade) async{
    try{
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User? user = result.user;

      await DatabaseService(uid: user!.uid).updateUserData(grade, 0);

      return _userFromFirebaseUser(user); 
    }catch(e){
      print(e.toString());
      return null;
    }
  }

  //sign out

  Future signOut() async{
    try{
      return await _auth.signOut();
    }catch(e){
      print(e.toString());
    }
  }
}
