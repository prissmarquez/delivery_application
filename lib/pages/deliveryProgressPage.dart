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
      bottomNavigationBar: _builderBottonNavBar(context),
      body:Column(
        children: [
          Receipt()
        ],
      ),
    );
  }

  Widget _builderBottonNavBar(BuildContext context){
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        )
      ),
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              shape: BoxShape.circle
            ),
            child: IconButton(
              icon: Icon(Icons.person),
              onPressed: () {}
            )
          ),

          SizedBox(width: 10,),

          //diver details 
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Diver Name',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary
                )
                ),
            ],
          )

          //message button 

          //call button 
        ],
      )
    );
  }
}