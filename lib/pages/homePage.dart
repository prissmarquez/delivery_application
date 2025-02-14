import 'package:deliver/components/MyDrawer.dart';
import 'package:deliver/components/myCurrentLocation.dart';
import 'package:deliver/components/silverAppBar.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: const Mydrawer(),
      body: NestedScrollView(
       headerSliverBuilder: (context, innerBoxIsScrolled) => [
       sliverappbar(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Divider(
              indent: 25,
              endIndent: 25,
              color: Theme.of(context).colorScheme.secondary
            ),
           //my current location 
           Mycurrentlocation(),
           //description box
           
          ]
        ),
        title: Text("Title")
        )
      ] ,
     body: Container(
        color: Colors.blue,
      ), 
    )
    );
  }
}