import 'package:deliver/pages/cartPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class sliverappbar extends StatelessWidget {
  final Widget child;
  final Widget title;
  const sliverappbar({
    required this.child,
    required this.title,
    super.key
    });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      collapsedHeight: 120,
      pinned:true,
      floating: false,
      actions: [
        //cart button 
        IconButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const Cartpage()));
        }, 
        icon: const Icon(Icons.shopping_cart))
      ],
      backgroundColor: Theme.of(context).colorScheme.background,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: const Text("IceCreams"),
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: child,
        ),
        title: title,
        centerTitle: true,
        titlePadding: EdgeInsets.only(left: 0, right: 0, top: 0),
        expandedTitleScale: 1,
      ),
    );
  }
}