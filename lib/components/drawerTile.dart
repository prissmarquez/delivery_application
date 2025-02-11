import 'package:flutter/material.dart';

class Drawertile extends StatelessWidget {
  final String title;
  final IconData? icon;
  final void Function()? onTap;

  const Drawertile({
    required this.icon,
    required this.title,
    this.onTap,
    super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(

    );
  }
}