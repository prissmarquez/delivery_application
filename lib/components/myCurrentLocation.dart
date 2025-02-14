import 'package:flutter/material.dart';

class Mycurrentlocation extends StatelessWidget {
  const Mycurrentlocation({super.key});

  void openLocationSearchBox(BuildContext context){
    showDialog(
    context: context, 
    builder: (context) => AlertDialog(
      title: Text('Your Location'),
      content: TextField(
        decoration: InputDecoration(
          hintText: "Search adress..."
        ),
      ),
      actions: [
        //cancel button
        MaterialButton(
          onPressed: () => Navigator.pop(context),
          child: Text("Cancel"),
          ),
        ///save buttton
         MaterialButton(
          onPressed: () => Navigator.pop(context),
          child: Text("Save"),
          )
      ],
    )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
          "Deliver Now",
          style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                //adress
                Text('Latitude:',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.bold
                ),
                ),
                  
                //drop down the menu
                Icon(Icons.keyboard_arrow_down_rounded)
              ],
            ),
          )
        ]
      ),
    );
  }
}