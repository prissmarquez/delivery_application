import 'package:deliver/themes/themeProvider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Settingspage extends StatelessWidget {
  const Settingspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          Container(
            decoration: 
            BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(12)
              ),
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //dark mode
                Text(
                  "Dark Mode",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.inversePrimary
                    ),
                ),

                //switch to change to dark mode 
                CupertinoSwitch(
                  value: Provider.of<Themeprovider> (context, listen: false). isDarkMode, 
                  onChanged: (value) => Provider.of<Themeprovider> (context, listen: false). toggleTheme(),
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}