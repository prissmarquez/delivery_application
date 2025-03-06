import 'package:deliver/components/receipt.dart';
import 'package:flutter/material.dart';

class Deliveryprogresspage extends StatelessWidget {
  const Deliveryprogresspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Text('Delivery Progress'),
      ),
      body:Column(
        children: [
          Receipt(
            
          )
        ],
      ),
    );
  }
}