import 'package:deliver/components/quantitySelector.dart';
import 'package:deliver/models/cart.dart';
import 'package:deliver/models/iceCreams(food).dart';
import 'package:deliver/models/store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCartitem extends StatelessWidget {
  final Cart cartItem;

  const MyCartitem({
    super.key,
    required this.cartItem
    });

  @override
  Widget build(BuildContext context) {
    return Consumer<Store>(
      builder: (context, store, child) => Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(8)
        ),
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  //iceCream Image
                  Image.asset(
                   
                    cartItem.iceCreams.imagePath,
                    height: 100,
                    width: 100,
                    ),

                    const SizedBox(width: 12,),
              
                  //name and price
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //name
                      Text(cartItem.iceCreams.name),
              
                      //pricce
                      Text(cartItem.iceCreams.price.toString())
                    ],
                  ),

                  const Spacer(),
              
                  //incremenet or decrement quantity
                  Quantityselector(
                    quantity: cartItem.quantity, 
                    iceCreams: cartItem.iceCreams,
                    onDecreemt:() {
                      store.removeFromCart(cartItem);
                    }, 
                    onIcrement: (){
                      store.addToCart(cartItem.iceCreams,cartItem.selectedAddons);
                    } 
                    
                    )
                ],
              ),
            ),

            //addons
            SizedBox(
              height: cartItem.selectedAddons.isEmpty ? 0: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 8,bottom: 10, right: 10),
                children: cartItem.selectedAddons
                .map(
                  (addon) => Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: FilterChip(
                      label: Row(
                      children: [
                        //adon name
                        Text(addon.name),
                        //addon price
                        Text(' + ${addon.price}'),
                      ],
                    ), 
                    shape: StadiumBorder(
                      side: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                      )
                    ),
                    onSelected: (value){},
                    backgroundColor: Theme.of(context).colorScheme.background,
                    labelStyle: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontSize: 12
                    ),
                    ),
                  ),
              )
              .toList(),
            )
            )

          ],
        ),
      )
    );
  }
}