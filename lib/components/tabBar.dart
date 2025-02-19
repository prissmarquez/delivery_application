import 'package:deliver/models/iceCreams.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Tabbar extends StatelessWidget {
  final TabController tabController;

  const Tabbar({
    super.key,
    required this.tabController,
  });

  List<Tab> _buildCategoriesTabs(){
    return IceCreamsCategory.values.map((Category) {
      return Tab(
        text: Category.toString().split(".").last
      );
    }).toList();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: tabController,
        tabs: [
          //1st tab
          Tab(icon: Icon(Icons.home)),

          //2nd tab
          Tab(icon: Icon(Icons.settings)),

           //3rd tab
          Tab(icon: Icon(Icons.person)),

        ]
        ),
    );
  }
}