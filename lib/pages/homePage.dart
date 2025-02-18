import 'package:deliver/components/MyDrawer.dart';
import 'package:deliver/components/descriptionBox.dart';
import 'package:deliver/components/myCurrentLocation.dart';
import 'package:deliver/components/silverAppBar.dart';
import 'package:deliver/components/tabBar.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> 
with SingleTickerProviderStateMixin{ 

  //tab Controller
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: const Mydrawer(),
      body: NestedScrollView(
       headerSliverBuilder: (context, innerBoxIsScrolled) => [
       sliverappbar(
        title: Tabbar(tabController: _tabController),
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
           Descriptionbox(),
          ]
        )
        )
      ] ,

      //---------------Esto va abajo del tabBar es nuestro body-------------//
     body: TabBarView(
      controller: _tabController,
      children: [
        ListView.builder(
          itemCount: 5,
          itemBuilder: (context,index) => Text("Hello")
          ),
        ListView.builder(
          itemCount: 5,
          itemBuilder: (context,index) => Text("Hello")
          ),
        ListView.builder(
          itemCount: 5,
          itemBuilder: (context,index) => Text("Hello")
          ),
      ]
      )
      ), 
    );
  }
}