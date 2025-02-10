import 'package:deliver/pages/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:deliver/pages/registerPage.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  //intially, show login page 
  bool showLoginPage = true;

  //toggle(alternar) between login and register page
  void togglePage(){
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage){
      return Loginpage(onTap: togglePage);
    }
    else{
      return Registerpage(onTap: togglePage);
    }
  }
}