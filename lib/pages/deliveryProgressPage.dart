import 'package:deliver/components/receipt.dart';
import 'package:deliver/models/store.dart';
import 'package:deliver/services/datebase/firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Deliveryprogresspage extends StatefulWidget {
  const Deliveryprogresspage({super.key});

  @override
  State<Deliveryprogresspage> createState() => _DeliveryprogresspageState();
}

class _DeliveryprogresspageState extends State<Deliveryprogresspage> {

  //get acess to db
    FirestoreService db = FirestoreService();
  @override
  void initState() {
    super.initState();

    //if we get to this page, submit orde to firestore db
    String receipt = context.read<Store>().generateReceipt();
    db.saveOrderToDatebase(receipt);
  }

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