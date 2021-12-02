//import 'package:brew_crew/models/user.dart';
//import 'package:brew_crew/services/database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:medifit360/db models/user.dart';
import 'package:medifit360/db models/commonuser.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'database.dart';
import 'databasepharma.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user obj based on firebase user
  CommonUser? _userFromFirebaseUser(User? user) {
    return user != null ? CommonUser(uid: user.uid ,val :0) : null;
  }

  // auth change user stream
  Stream<CommonUser?> get user  {
    return _auth.authStateChanges().map(_userFromFirebaseUser);
        //.map((User user) => _userFromFirebaseUser(user));

  }

  // sign in anon
 /* Future signInAnon() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  } */

  // sign in with email and password
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      return user;
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  // register with email and password
  Future registeruserWithEmailAndPassword(String email, String password,String name  ) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      // create a new document for the user with the uid
      await DatabaseUserService(uid: user!.uid).updateUserData(name);
      return _userFromFirebaseUser(user);
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  Future registerpharmacyWithEmailAndPassword(String email, String password ,String ownername ,String regnum ,String address ,String city) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      // create a new document for the user with the uid
      await DatabasePharmaService(uid: user!.uid).updateUserData( ownername, regnum,address,city );
      return _userFromFirebaseUser(user);
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  // sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

}