// ignore: file_names
import 'package:flutter/material.dart';

class Descriptionbox extends StatelessWidget {
  const Descriptionbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
        borderRadius: BorderRadius.circular(12)
      ),
      padding: EdgeInsets.all(25),
      margin: EdgeInsets.only(left: 25, right: 25, bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //delivery fee
          Column(
            children: [
              Text(
                "\$0.99",
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
              Text("Delivery fee",
               style: TextStyle(color: Theme.of(context).colorScheme.secondary),)
            ],
          ),

          //delivery time
          Column(
            children: [
              Text("30-40 minutes",
              style: TextStyle(color: Theme.of(context).colorScheme.primary),),
              Text("Delivery time",
               style: TextStyle(color: Theme.of(context).colorScheme.secondary))
            ],
          )

        ],
      )
    );
  }
}