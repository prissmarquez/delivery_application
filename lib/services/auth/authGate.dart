import 'package:deliver/pages/homePage.dart';
import 'package:deliver/services/auth/login_or_register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Authgate extends StatelessWidget {
  const Authgate({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //user is logged in
          if(snapshot.hasData){
            return Homepage();
          }

          //user is NOT  logged in
          else{
            return LoginOrRegister();
          }
        }
        ),
    );
  }
}