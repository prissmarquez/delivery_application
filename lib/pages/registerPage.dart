import 'package:flutter/material.dart';
import 'package:deliver/components/button.dart';
import 'package:deliver/components/textField.dart';

class Registerpage extends StatefulWidget {
 final void Function()? onTap;

  const Registerpage({
    super.key,
    required this.onTap
    });

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();


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
              Icons.lock,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
              ),

              const SizedBox(height: 20,),
           

            //message, app slogan
            Text(
              "Let's create an accout for you",
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

            //confirmpassword textfield 
            Textfield(
            controller: confirmPasswordController, 
            hintText: "confirm you password", 
            obscureText: true,
            ),

            const SizedBox(height: 20,),

            //sign in button
            Button(
              onTap: (){}, 
              text: "Sign Up"
              ),
        
            
            const SizedBox(height: 20,),

            //already have an accout? Login now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an accout? ",
                ),

                const SizedBox(height: 14,),

                GestureDetector(
                  onTap: widget.onTap,
                  child: const Text(
                    "Login now",
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