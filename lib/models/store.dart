import 'package:collection/collection.dart';
import 'package:deliver/components/receipt.dart';
import 'package:deliver/models/cart.dart';
import 'package:deliver/models/iceCreams(food).dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Store extends ChangeNotifier {
  final List<IceCreams> _menu = [
    //1. milk

    //---------clase que da la informacion del producto------------//
    IceCreams(
    name: "Almond Bliss", 
    description: "A smooth and creamy almond-flavored ice cream made with fresh milk", 
    price: 4.99, 
    imagePath:"lib/images/milk/almons.jpg", 
    category: IceCreamsCategory.milk,
    availableAddons: [
      Addons(name:"Crushed almonds", price: 0.50), 
      Addons(name:"Caramel drizzle", price: 0.50), 
      Addons(name:"White chocolate chips", price: 0.75), 
      Addons(name:"Whipped cream", price: 0.50),
    ],
    ),

    //---------clase que da la informacion del producto------------//
    IceCreams(
    name: "Choco Heaven", 
    description: "Indulge in the richness of our chocolate milk ice cream, crafted with premium cocoa and a velvety texture that melts in your mout", 
    price: 4.99, 
    imagePath:"lib/images/milk/chocolate.jpg" , 
    category: IceCreamsCategory.milk,
    availableAddons: [
      Addons(name:"Chocolate chips", price: 0.50), 
      Addons(name:"Brownie bites", price: 0.75), 
      Addons(name:"Chocolate syrup", price: 0.50), 
      Addons(name:"Marshmallows", price: 0.50),
    ],
    ),

    //---------clase que da la informacion del producto------------//
    IceCreams(
    name: "Coco Delight", 
    description: "A tropical escape in every scoop! Creamy coconut milk ice cream with real coconut flakes for a refreshing and exotic treat.", 
    price: 4.99, 
    imagePath:"lib/images/milk/coconut.jpeg" , 
    category: IceCreamsCategory.milk,
    availableAddons: [
      Addons(name:"Toasted coconut", price: 0.50), 
      Addons(name:"Pineapple chunks", price: 0.75), 
      Addons(name:"White chocolate drizzle", price: 0.50), 
      Addons(name:"Macadamia nuts", price: 0.75),
    ],
    ),

    //---------clase que da la informacion del producto------------//
    IceCreams(
    name: "Coffee Rush", 
    description: "A bold and aromatic ice cream infused with real coffee, delivering a smooth and energizing experience with every bite.", 
    price: 4.99, 
    imagePath:"lib/images/milk/coffee.webp" , 
    category: IceCreamsCategory.milk,
    availableAddons: [
      Addons(name:"Espresso shot", price: 1.00), 
      Addons(name:"Chocolate-covered coffee beans", price: 0.75), 
      Addons(name:"Caramel syrup", price: 0.50), 
      Addons(name:"Whipped cream", price: 0.50),
    ],
    ),

    //---------clase que da la informacion del producto------------//
    IceCreams(
    name: "Vanilla Dream", 
    description: " A timeless classic made with fresh milk and pure vanilla bean extract, offering a rich, creamy, and elegant flavor.", 
    price: 4.99, 
    imagePath:"lib/images/milk/vainilla.jpg" , 
    category: IceCreamsCategory.milk,
    availableAddons: [
      Addons(name:"Crushed cookies", price: 0.50), 
      Addons(name:"Honey drizzle", price: 0.50), 
      Addons(name:"Caramelized pecans", price: 0.75), 
      Addons(name:"Fresh strawberries", price: 0.75),
    ],
    ),

    //2. cream

    //---------clase que da la informacion del producto------------//
    IceCreams(
    name: "Banana Royale", 
    description: "A rich and velvety banana-flavored ice cream made with real bananas and fresh cream, delivering a naturally sweet and smooth taste.", 
    price: 5.49, 
    imagePath:"lib/images/cream/banana.jpeg" , 
    category: IceCreamsCategory.cream,
    availableAddons: [
      Addons(name:"Sliced bananas", price: 0.75), 
      Addons(name:"Caramel drizzle", price: 0.50), 
      Addons(name:"Chopped walnuts", price: 0.75), 
      Addons(name:"Whipped cream", price: 0.50),
    ],
    ),

     //---------clase que da la informacion del producto------------//
    IceCreams(
    name: "Golden Caramel Swirl", 
    description: "Indulge in the buttery richness of caramel-infused cream ice cream with delicate swirls of golden caramel for the ultimate sweet experience.", 
    price: 5.49, 
    imagePath:"lib/images/cream/Caramel.jpg" , 
    category: IceCreamsCategory.cream,
    availableAddons: [
      Addons(name:"Caramelized pecans", price: 0.75), 
      Addons(name:"Sea salt flakes", price: 0.50), 
      Addons(name:"Chocolate chips", price: 0.50), 
      Addons(name:"Extra caramel drizzle", price: 0.50),
    ],
    ),

     //---------clase que da la informacion del producto------------//
    IceCreams(
    name: "Cookies & Dream", 
    description: "A creamy vanilla-based ice cream loaded with crunchy chocolate cookie chunks, giving you the perfect balance between smooth and crunchy textures.", 
    price: 5.49, 
    imagePath:"lib/images/cream/Cookies.jpg" , 
    category: IceCreamsCategory.cream,
    availableAddons: [
      Addons(name:"Extra cookie crumbles", price: 0.50), 
      Addons(name:"Chocolate fudge ", price: 0.75), 
      Addons(name:"Whipped cream ", price: 0.50), 
      Addons(name:"White chocolate chips", price: 0.75),
    ],
    ),

     //---------clase que da la informacion del producto------------//
    IceCreams(
    name: "Minty Bliss", 
    description: "Refresh your senses with a creamy and cool mint-flavored ice cream blended with chocolate flakes for a deliciously smooth and invigorating treat.", 
    price: 5.49, 
    imagePath:"lib/images/cream/mint.jpg" , 
    category: IceCreamsCategory.cream,
    availableAddons: [
      Addons(name:"Extra chocolate flakes", price: 0.50), 
      Addons(name:"Crushed peppermint candy ", price: 0.50), 
      Addons(name:"Dark chocolate drizzle", price: 0.50), 
      Addons(name:"Whipped cream", price: 0.75),
    ],
    ),

     //---------clase que da la informacion del producto------------//
    IceCreams(
    name: "Vanilla Supreme", 
    description: "A luxurious and silky vanilla ice cream made with Madagascar vanilla beans and rich cream, offering a classic and elegant flavor.", 
    price: 5.49, 
    imagePath:"lib/images/cream/vainilla.jpg" , 
    category: IceCreamsCategory.cream,
    availableAddons: [
      Addons(name:"Crushed almond", price: 0.50), 
      Addons(name:"Caramel drizzle", price: 0.50), 
      Addons(name:"Fresh berries", price: 0.75), 
      Addons(name:"Honey drizzle", price: 0.50),
    ],
    ),

    //3. fruit 

     //---------clase que da la informacion del producto------------//
    IceCreams(
    name: "Apple Sensation", 
    description: "A refreshing green apple ice cream with a perfect balance of sweetness and tanginess, made with real apple puree for a crisp and fruity delight.", 
    price: 5.29, 
    imagePath:"lib/images/fruit/Apple.jpg" , 
    category: IceCreamsCategory.fruit,
    availableAddons: [
      Addons(name:"Cinnamon sprinkle", price: 0.50), 
      Addons(name:"Caramel drizzle", price: 0.50), 
      Addons(name:"Granola crunch", price: 0.75), 
      Addons(name:"Whipped cream", price: 0.50),
    ],
    ),

     //---------clase que da la informacion del producto------------//
    IceCreams(
    name: "Kiwi Twist", 
    description: "A smooth and tropical kiwi-flavored ice cream made with real fruit pulp, delivering a refreshing and slightly tangy burst of flavor.", 
    price: 5.29, 
    imagePath:"lib/images/fruit/kiwi.jpg" , 
    category: IceCreamsCategory.fruit,
    availableAddons: [
      Addons(name:"Chia seeds", price: 0.50), 
      Addons(name:"Fresh kiwi slices ", price: 0.75), 
      Addons(name:"Honey drizzle", price: 0.50), 
      Addons(name:"Coconut flakes", price: 0.50),
    ],
    ),

    //---------clase que da la informacion del producto------------//
    IceCreams(
    name: "Orange Zest", 
    description: "A creamy and citrusy delight made with fresh orange juice and zest, offering a vibrant and refreshing taste in every bite.", 
    price: 5.29, 
    imagePath:"lib/images/fruit/Orange.jpg" , 
    category: IceCreamsCategory.fruit,
    availableAddons: [
      Addons(name:"White chocolate drizzle", price: 0.50), 
      Addons(name:"Candied orange peel", price: 0.75), 
      Addons(name:"Chopped almonds", price: 0.50), 
      Addons(name:"Whipped cream", price: 0.50),
    ],
    ),

    //---------clase que da la informacion del producto------------//
    IceCreams(
    name: "Peach Paradise", 
    description: "A smooth and luscious peach ice cream infused with real peach chunks, creating a naturally sweet and juicy experience.", 
    price: 5.29, 
    imagePath:"lib/images/fruit/peach.webp" , 
    category: IceCreamsCategory.fruit,
    availableAddons: [
      Addons(name:"Fresh peach slices", price: 0.75), 
      Addons(name:"Honey drizzle", price: 0.50), 
      Addons(name:"Toasted coconut", price: 0.50), 
      Addons(name:"Granola crunch", price: 0.75),
    ],
    ),

    //---------clase que da la informacion del producto------------//
    IceCreams(
    name: "Berry Bliss", 
    description: "A rich and creamy strawberry ice cream made with sun-ripened strawberries, offering a naturally sweet and tangy explosion of flavor.", 
    price: 5.29, 
    imagePath:"lib/images/fruit/Strawberry.jpg" , 
    category: IceCreamsCategory.fruit,
    availableAddons: [
      Addons(name:"Fresh strawberries", price: 0.75), 
      Addons(name:"White chocolate chips", price: 0.50), 
      Addons(name:"Crushed cookies", price: 0.50), 
      Addons(name:"Whipped cream", price: 0.50),
    ],
    ),

    //4. water
    //---------clase que da la informacion del producto------------//
    IceCreams(
    name: "Zesty Lemon", 
    description: " A refreshing and tangy lemon sorbet made with fresh lemon juice and zest, delivering a perfectly balanced sweet and citrusy kick.", 
    price: 4.79, 
    imagePath:"lib/images/water/lemon.jpeg" , 
    category: IceCreamsCategory.water,
    availableAddons: [
      Addons(name:"Mint leaves", price: 0.50), 
      Addons(name:"Lemon zest", price: 0.50), 
      Addons(name:"Chia seeds", price: 0.50), 
      Addons(name:"Honey drizzle", price: 0.50),
    ],
    ),

     //---------clase que da la informacion del producto------------//
    IceCreams(
    name: "Tropical Mango", 
    description: "A smooth and naturally sweet mango sorbet made from ripe mangoes, offering a creamy texture without dairy. A taste of the tropics in every bite!", 
    price: 4.79, 
    imagePath:"lib/images/water/mango.jpg" , 
    category: IceCreamsCategory.water,
    availableAddons: [
      Addons(name:"Fresh mango chunks", price: 0.75), 
      Addons(name:"Tajín seasoning", price: 0.50), 
      Addons(name:"Coconut flakes ", price: 0.50), 
      Addons(name:"Chamoy drizzle", price: 0.50),
    ],
    ),

  IceCreams(
  name: "Berry Fusion", 
  description: "A delightful mix of red fruits—strawberries, raspberries, and blueberries—blended into a vibrant and juicy sorbet bursting with natural berry flavors.", 
  price: 4.79, 
  imagePath: "lib/images/water/redFruits.jpg", 
  category: IceCreamsCategory.water,
  availableAddons: [
    Addons(name: "Fresh berries", price: 0.75), 
    Addons(name: "Granola crunch", price: 0.50), 
    Addons(name: "Dark chocolate chips", price: 0.50), 
    Addons(name: "Whipped cream", price: 0.50),
  ],
),

IceCreams(
  name: "Strawberry Splash", 
  description: "A light and refreshing strawberry sorbet made with fresh strawberries and a hint of citrus, offering a naturally sweet and tangy experience.", 
  price: 4.79, 
  imagePath: "lib/images/water/Strawberrys.jpg", 
  category: IceCreamsCategory.water,
  availableAddons: [
    Addons(name: "Fresh strawberry slices", price: 0.75), 
    Addons(name: "White chocolate drizzle", price: 0.50), 
    Addons(name: "Basil leaves", price: 0.50), 
    Addons(name: "Chia seeds", price: 0.50),
  ],
),

IceCreams(
  name: "watermelon Breeze", 
  description: "A hydrating and delicious watermelon sorbet, made with real watermelon juice for a naturally refreshing and fruity summer treat.", 
  price: 4.79, 
  imagePath: "lib/images/water/watermelon.jpeg", 
  category: IceCreamsCategory.water,
  availableAddons: [
    Addons(name: "Fresh watermelon cubes", price: 0.75), 
    Addons(name: "Mint leaves", price: 0.50), 
    Addons(name: "Tajín seasoning", price: 0.50), 
    Addons(name: "Chamoy drizzle", price: 0.50),
  ],
),

    //ice popsicles
    //---------clase que da la informacion del producto------------//
IceCreams(
  name: "ChocoNut Delight", 
  description: "A rich chocolate popsicle coated with crunchy almonds and hazelnuts, offering a perfect balance between smooth and crunchy textures.", 
  price: 4.99, 
  imagePath: "lib/images/ice_popsicle/chocolate and nuts.jpeg", 
  category: IceCreamsCategory.popsicle,
  availableAddons: [
    Addons(name: "Extra nut topping", price: 0.75), 
    Addons(name: "Dark chocolate drizzle", price: 0.50), 
    Addons(name: "Coconut flakes", price: 0.50), 
    Addons(name: "Caramel drizzle", price: 0.50),
  ],
),

IceCreams(
  name: "Classic Choco Pop", 
  description: "A smooth and creamy chocolate popsicle made with premium cocoa, perfect for chocolate lovers looking for a rich and indulgent treat.", 
  price: 4.99, 
  imagePath: "lib/images/ice_popsicle/chocolate.jpeg", 
  category: IceCreamsCategory.popsicle,
  availableAddons: [
    Addons(name: "Chocolate chips", price: 0.50), 
    Addons(name: "White chocolate drizzle", price: 0.50), 
    Addons(name: "Crushed cookies", price: 0.75), 
    Addons(name: "Whipped cream", price: 0.50),
  ],
),

IceCreams(
  name: "Zesty Lemon Pop", 
  description: "A refreshing and tangy lemon-flavored popsicle made with fresh lemon juice, offering a cool and citrusy burst of flavor.", 
  price: 4.99, 
  imagePath: "lib/images/ice_popsicle/lemon.jpg", 
  category: IceCreamsCategory.popsicle,
  availableAddons: [
    Addons(name: "Lemon zest", price: 0.50), 
    Addons(name: "Mint leaves", price: 0.50), 
    Addons(name: "Chia seeds", price: 0.50), 
    Addons(name: "Honey drizzle", price: 0.50),
  ],
),

IceCreams(
  name: "Tropical Pineapple Pop", 
  description: "A juicy pineapple popsicle made with real pineapple puree, delivering a tropical and refreshing flavor in every bite.", 
  price: 4.99, 
  imagePath: "lib/images/ice_popsicle/pineapple .jpeg", 
  category: IceCreamsCategory.popsicle,
  availableAddons: [
    Addons(name: "Fresh pineapple chunks", price: 0.75), 
    Addons(name: "Tajín seasoning", price: 0.50), 
    Addons(name: "Coconut flakes", price: 0.50), 
    Addons(name: "Chamoy drizzle", price: 0.50),
  ],
),

IceCreams(
  name: "Sweet Rice Pudding Pop", 
  description: "A creamy and cinnamon-infused rice pudding popsicle, inspired by the traditional arroz con leche, offering a nostalgic and comforting taste.", 
  price: 4.99, 
  imagePath: "lib/images/ice_popsicle/rice pudding .jpg", 
  category: IceCreamsCategory.popsicle,
  availableAddons: [
    Addons(name: "Extra cinnamon", price: 0.50), 
    Addons(name: "Raisins", price: 0.50), 
    Addons(name: "Caramel drizzle", price: 0.50), 
    Addons(name: "Chopped almonds", price: 0.75),
  ],
),
  ];
  
  //G E T T E R S
  List<IceCreams> get menu => _menu;
  List<Cart> get cart => _cart;

  /* 

      O P E R A T I O N S 

  */

  //use cart
  final List<Cart> _cart = [];

  //add to cart 
  void addToCart(IceCreams iceCreams, List<Addons> selectedAddons) {
    //if there is a cart item already with the same IceCream and selected Addons
    Cart? cartItem = _cart.firstWhereOrNull((item) {
      //check if the IceCream item is the same
      bool isSameIceCream = item.iceCreams == iceCreams;

      //check if the list of selected addons are the same 
      bool isSameAddons = 
        const ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameIceCream && isSameAddons;
    });
    
    //increse quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    //otherviwe and a new cart iten to the cart
    else{
      _cart.add(
        Cart(
          iceCreams: iceCreams, 
          selectedAddons: selectedAddons, 
          ));
      }
    notifyListeners();
  }

  //remove from cart
  void removeFromCart(Cart cartItem) {
    int cartindex = _cart.indexOf(cartItem);

    if(cartindex != -1){

      if(_cart[cartindex].quantity > 1){
        _cart[cartindex].quantity--;
      }
      else{
        _cart.removeAt(cartindex);
      }
    }
      notifyListeners();
  }

  //get the total price of the cart
  double getTotalPrice (){
    double total = 0.0;

      for (Cart cartItem in _cart) {
      double itemTotal = cartItem.iceCreams.price;

      for(Addons addons in cartItem.selectedAddons){
        itemTotal += addons.price;
      }
      total += itemTotal * cartItem.quantity;

    }
    return total;
  }


  //get numbers of item in the cart
  int getTotalItem  (){
    int totalItem = 0;
    for (Cart cartItem in _cart) {
      totalItem += cartItem.quantity;
    }
    return totalItem;
  }

  //clean the cart 
  void cleanCart(){
    _cart.clear();
    notifyListeners();
  }

  /*

      H E L P E R S 

  */

  //generate a receipt 
  String generateReceipt(){
    final receipt = StringBuffer();
    receipt.writeln('Here your receipt');
    receipt.writeln('');

    String formattedDate = DateFormat("yyyy-MM-dd").format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("------------------");

    for(final cartItem in _cart){
      receipt.writeln(
        '${cartItem.iceCreams.name} x ${cartItem.quantity} - ${_formatPrice(cartItem.iceCreams.price)}');
        if(cartItem.selectedAddons.isEmpty){
          receipt.writeln("Addons : ${_formatAddons(cartItem.selectedAddons)}");
        }
        receipt.writeln();
    }
    receipt.writeln("------------------");
    receipt.writeln("");
    receipt.writeln("Total Items: ${getTotalItem()}");
    receipt.writeln("Total Items: ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }

  //format doubel value into money
  String _formatPrice(double price){
    return price.toStringAsFixed(2);
  }

  //format list of addoms into string
  String _formatAddons(List<Addons> addons){
    return addons.map((addons) => "${addons.name} (${_formatPrice(addons.price)})").join(".");
  }
}