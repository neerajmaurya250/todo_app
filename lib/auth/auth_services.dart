import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:todoapp/models/users.dart';

class AuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user obj based on firebase user
  User _userFromFirebaseUser(FirebaseUser user) {
    return user != null ? User(uid: user.uid) : null;
  }

  // auth change user stream
  Stream<User> get user {
    return _auth.onAuthStateChanged
    //.map((FirebaseUser user) => _userFromFirebaseUser(user));
        .map(_userFromFirebaseUser);
  }


  Future registerWithEmailAndPassword(
      String email,
      String password,
      String name,
      String empId,
      int user,)
  async{
    try{
      AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;
      Firestore.instance.collection('users').document(user.uid).setData({
        "email" : email,
        "name" : name,
        "uid" : user.uid,
        "user" : 0,
        "empId" : empId
      });
    } catch(e){
      print(e.toString());
    }
  }
}