import 'package:deliver/models/iceCreams(food).dart';
import 'package:flutter/material.dart';

class Quantityselector extends StatelessWidget {
  final int quantity;
  final IceCreams iceCreams;
  final VoidCallback onIcrement;
  final VoidCallback onDecreemt;

  const Quantityselector({
    super.key
    ,required this.quantity
    ,required this.iceCreams
    ,required this.onIcrement
    ,required this.onDecreemt
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(30),
      ),
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          //decrease button
          GestureDetector(
            onTap: onDecreemt,
            child: Icon(
              Icons.remove,
              size: 20,
              color: Theme.of(context).colorScheme.primary
            ),
          ),

          //quantity count who much?
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: SizedBox(
              width: 20,
              child: Center(
                child: Text(
                  quantity.toString()
                )
              ),
            ),
          ),

          //Increment button
          GestureDetector(
            onTap: onIcrement,
            child: Icon(
              Icons.add,
              size: 20,
              color: Theme.of(context).colorScheme.primary
            ),
          )
        ],
      ),
    );
  }
}