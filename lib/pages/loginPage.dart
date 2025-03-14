import 'package:deliver/components/button.dart';
import 'package:deliver/components/textField.dart';
import 'package:deliver/pages/homePage.dart';
import 'package:deliver/services/auth/authService.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  final void Function()? onTap;


  const Loginpage({
    super.key,
    required this.onTap
    });

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final  emailController = TextEditingController();
  final  passwordController = TextEditingController();

  //Login method 
  Future<void> login() async {
    //get instance of uath service
    final _authService = Authservice();

    //try sign up
    try{
      await _authService.signInWithEmailPassword(
        emailController.text
        ,passwordController.text
        );
  }

  //display any error
  catch(e){
    showDialog(
      // ignore: use_build_context_synchronously
      context: context, 
      builder: (context) => AlertDialog(
        title: Text(e.toString()),
      )
      );
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo 
            Icon(
              Icons.icecream_outlined,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
              ),

              const SizedBox(height: 20,),
        
            //message, app slogan
            Text(
              "Best flavors in word",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                fontSize:16, 
              ),
            ),

            const SizedBox(height: 20,),
        
            //email textfield
            Textfield(
            controller: emailController, 
            hintText: "email", 
            obscureText: false,
            ),

            const SizedBox(height: 20,),
            
            //password textfield 
            Textfield(
            controller: passwordController, 
            hintText: "password", 
            obscureText: true,
            ),

            const SizedBox(height: 20,),

            //sign in button
            Button(
              onTap: login, 
              text: "Sign In"
              ),
        
            //not a member? Register now

            const SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Not a member? ",
                ),
                const SizedBox(height: 14,),

                GestureDetector(
                  onTap: widget.onTap,
                  child: const Text(
                    "Register now",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline
                    ),
                  ),
                )
              ]
            )
        
          ],
        ),
      ),
    );
  }
}