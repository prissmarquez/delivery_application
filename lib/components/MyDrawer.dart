import 'package:deliver/components/drawerTile.dart';
import 'package:deliver/pages/settingsPage.dart';
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

        Padding(
          padding: const EdgeInsets.all(15),
          child: Divider(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),

          //home list tile
          Drawertile(
            icon: Icons.home,
             text: "H O M E",
             onTap: () => Navigator.pop(context),
             ),
          //settings list tile
           Drawertile(
            icon: Icons.settings,
             text: "S E T T I N G S",
             onTap: () {
               Navigator.pop(context);
               Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Settingspage(),
                )
               );
             } ,
             ),
          //logout list tile
          Drawertile(
            icon: Icons.logout,
             text: "L O G O U T",
             onTap: () {} ,
             )
        ]
      )
    );
}
}