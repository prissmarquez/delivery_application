import 'package:deliver/components/button.dart';
import 'package:deliver/components/cartItem.dart';
import 'package:deliver/models/store.dart';
import 'package:deliver/pages/paymentPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Store>(
      builder: (context, store, child) {
        //cart
        final userCart = store.cart;

        return Scaffold(
          appBar: AppBar(
            title: const Text('Cart'),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              //clear all cart 
              IconButton(
                onPressed: (){
                  showDialog(
                    context: context, 
                    builder: (context) => AlertDialog(
                      title:Text("Are you sure want to clear the cart"),
                      actions: [
                        TextButton(
                          //no botton
                          onPressed: ()=> Navigator.pop(context),
                          child: Text("Cancel"),
                        ),
                        //yes button
                        TextButton(
                          onPressed: (){
                            Navigator.pop(context);
                            store.cleanCart();
                          },
                          child: Text("Yes"),
                        )
                      ],
                    ),
                    );
                }, 
                icon: const Icon(Icons.delete)
                )
            ],
          ),

          body: Column(
            children: [
               //list of cart
                Expanded(
                child: Column(
                  children: [
                    userCart.isEmpty 
                    ? const Expanded(
                      child: Center(
                        child: Text("Cart is Empty")
                        )
                        ): 
                    Expanded(
                      child: ListView.builder(
                        itemCount: userCart.length,
                        itemBuilder: (context, index) { 
                          //get indivuadl cart item 
                          final cartItem = userCart[index];
                
                          // return cart tile
                          return MyCartitem(cartItem: cartItem);
                        },
                        )
                      )
                  ]
                ),
              ),
              //button to pay 
            Button(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const Paymentpage()),
              );
            },
            text: "Go to checkout",
            ),
            const SizedBox(height: 20,)
            ],
          ),
        );

      }
    );
  }
}