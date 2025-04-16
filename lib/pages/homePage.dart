import 'package:deliver/components/MyDrawer.dart';
import 'package:deliver/components/descriptionBox.dart';
import 'package:deliver/components/myCurrentLocation.dart';
import 'package:deliver/components/myIceCreams_tile.dart';
import 'package:deliver/components/silverAppBar.dart';
import 'package:deliver/components/tabBar.dart';
import 'package:deliver/models/iceCreams(food).dart';
import 'package:deliver/models/store.dart';
import 'package:deliver/pages/iceCreamsPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
    _tabController = TabController(
      length: IceCreamsCategory.values.length, 
      vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // Sort out and return a list of iceCreams items that belong to a specfic category 
  List<IceCreams>_filterMenuByCategory(IceCreamsCategory category, List<IceCreams> fulMenu){
    return fulMenu.where((iceCream) => iceCream.category == category).toList();
  }

  //return list of iceCremas in a given category
  List<Widget> getFoodInThisCategory(List<IceCreams> fullMenu){
    return IceCreamsCategory.values.map((category){

      //get Category menu
      List<IceCreams> categoryMenu = _filterMenuByCategory(category, fullMenu);

      return ListView.builder(
        padding:EdgeInsets.zero,
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {

          //get individual IceCreams 
          final iceCreams = categoryMenu[index];

          //return food tile UI, muestra los prdocutos en el body 
          return IcecreamsTile(
            iceCreams: iceCreams, 
            onTap:() =>  Navigator.push (context, MaterialPageRoute(builder: (context) => Icecreamspage(iceCreams: iceCreams))),
            );
        },
      );
    }).toList();
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
      body: Consumer<Store>(
      builder: (context, store, child) => TabBarView(
      controller: _tabController,
      children: getFoodInThisCategory(store.menu)
      )
      )
      ), 
    );
  }
}