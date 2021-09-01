import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService{
  final String uid;

  DatabaseService({required this.uid});

  final CollectionReference userCollection = FirebaseFirestore.instance.collection("users");

  Future updateUserData(int grade, int points) async{
    
    return await userCollection.doc(uid).set({
      "grade" : grade,
      "points": points,
    });
  }
}