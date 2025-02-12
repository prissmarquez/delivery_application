import 'package:deliver/components/MyDrawer.dart';
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
      appBar: AppBar(
       title: Text(
        "HomePage"
       ),
       backgroundColor: Theme.of(context).colorScheme.background,
      ),
      drawer: Mydrawer(),
    
    );
  }
}