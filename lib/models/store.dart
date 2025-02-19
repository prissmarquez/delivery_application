import 'package:deliver/models/iceCreams.dart';

class Store {
  final List<IceCreams> _menu = [
    //milk
    //---------clase que da la informacion del producto------------//
    IceCreams(
    name: "Almond Bliss", 
    description: "A smooth and creamy almond-flavored ice cream made with fresh milk", 
    price: 4.99, 
    imagePath:"lib/assets/milk/almond.webp" , 
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
    imagePath:"lib/assets/milk/chocolate.jpg" , 
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
    description: " A tropical escape in every scoop! Creamy coconut milk ice cream with real coconut flakes for a refreshing and exotic treat.", 
    price: 4.99, 
    imagePath:"lib/assets/milk/coconut.jpeg" , 
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
    description: " A bold and aromatic ice cream infused with real coffee, delivering a smooth and energizing experience with every bite.", 
    price: 4.99, 
    imagePath:"lib/assets/milk/coffee.webp" , 
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
    imagePath:"lib/assets/milk/vainilla.jpg" , 
    category: IceCreamsCategory.milk,
    availableAddons: [
      Addons(name:"Crushed cookies", price: 0.50), 
      Addons(name:"Honey drizzle", price: 0.50), 
      Addons(name:"Caramelized pecans", price: 0.75), 
      Addons(name:"Fresh strawberries", price: 0.75),
    ],
    ),

    //cream

    //fruit 

    //water

    //ice popsicles
  ];

  //G E T T E R S
  List<IceCreams> get menu => _menu;

  /* 

      O P E R A T I O N S 

  */

  //add to cart 

  //remove from cart

  //get the total price of the cart

  //get numbers of item in the cart

  //clean the cart 

  /*

      H E L P E R S 

  */

  //generate a receipt 

  //format doubel value into money

  //format list of addoms into string
}