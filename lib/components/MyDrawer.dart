import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: ListView(
        children: [
          // app logo
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Icon(
            Icons.icecream_outlined,
            size: 55,
            color: Theme.of(context).colorScheme.inversePrimary
            ),
        ),

        Divider(
          color: Theme.of(context).colorScheme.secondary,
        )

          //home list tile

          //settings list tile

          //logout list tile
        ]
      )
    );
}
}