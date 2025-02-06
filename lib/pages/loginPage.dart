import 'package:deliver/components/button.dart';
import 'package:deliver/components/textField.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();


   Loginpage({super.key});

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
              onTap: (){}, 
              text: "Sign In"
              ),
        
            //not a member? Register now

            const SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member? ",
                ),
                SizedBox(height: 14,),
                Text(
                  "Register now",
                )
              ]
            )
        
          ],
        ),
      ),
    );
  }
}