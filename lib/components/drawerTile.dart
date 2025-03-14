import 'package:flutter/material.dart';

class Drawertile extends StatelessWidget {
  final String text;
  final IconData? icon;
  final void Function()? onTap;

  const Drawertile({
    required this.text,
    required this.icon,
    this.onTap,
    super.key,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: ListTile(
        title: Text(
          text,
          style: TextStyle(
            color: Theme.of(context).colorScheme.inversePrimary
            ),
        ),
        leading: Icon(
          icon,
          color: Theme.of(context).colorScheme.inversePrimary
        ),
        onTap: onTap,
      ),
    );
  }
}