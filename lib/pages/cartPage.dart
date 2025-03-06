import 'package:deliver/components/cartItem.dart';
import 'package:deliver/models/store.dart';
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
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: userCart.length,
                  itemBuilder: (context, index) { 
                    //get indivuadl cart item 
                    final cartItem = userCart[index];

                    // return cart tile
                    return MyCartitem(cartItem: cartItem);
                  }
                  )
                )
            ]
          ),
        );
      }
    );
  }
}