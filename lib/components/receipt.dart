import 'package:deliver/models/store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Receipt extends StatelessWidget {
  const Receipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25, right: 25, bottom: 25),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Thank you for your orden"),
            SizedBox(height: 19,),
            Container(
              decoration: BoxDecoration(
                border: 
                Border.all(
                  color: Theme.of(context).colorScheme.secondary,
                ),
                borderRadius: BorderRadius.circular(8)
              ),
              padding: EdgeInsets.all(30) ,
              child: Consumer<Store>(
                builder: (context, store, child) => Text(store.generateReceipt())
                ),
            )
          ],
        ),
      ),
      );
  }
}