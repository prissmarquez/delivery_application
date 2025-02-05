import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

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
              size: 40,
              color: Theme.of(context).colorScheme.inversePrimary,
              ),
              SizedBox(height: 20,),
           
            //message, app slogan
            Text(
              "Best flavors in word",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                fontSize:16, 
              ),
            ),
        
            //email textfield
            TextField(

            )
        
            //password textfield 
        
            //sign in button
        
            //not a member? Register now
        
          ],
        ),
      ),
    );
  }
}