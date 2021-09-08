import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService{
  final String uid;

  DatabaseService({required this.uid});

  final CollectionReference userCollection = FirebaseFirestore.instance.collection("users");

  Future updateUserData(String username, int grade, int points) async{
    
    return await userCollection.doc(uid).set({
      "username" : username,
      "grade" : grade,
      "points": points,
    });
  }

  Stream<QuerySnapshot> get users {
    return userCollection.snapshots();
  }
}