import 'package:deliver/models/iceCreams(food).dart';
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
        tabs: _buildCategoriesTabs(),
        ),
    );
  }
}