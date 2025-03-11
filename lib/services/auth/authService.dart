import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class Authservice {
  //get instance of firebase auth 
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  //get current year 
  User? getCurrentUser(){
    return _firebaseAuth.currentUser;
  }

  //sign in
  Future<UserCredential> signInWithEmailPassword(String email, password) async {
    try {
      //sign user in
      UserCredential userCredential = 
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email, 
        password: password
        );
        return userCredential;
        } 
        on FirebaseAuthException catch (e) {
          throw Exception(e.code);
          }
  }

  //sing  up 
  Future<UserCredential> signUpWithEmailPassword(String email, password) async {
    try {
      //sign user in
      UserCredential userCredential = 
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email, 
        password: password
        );
        return userCredential;
        } 
        on FirebaseAuthException catch (e) {
          throw Exception(e.code);
          }
  }

  //sign out 
  Future<void> signOut() async {
    return await _firebaseAuth.signOut();
  }
}