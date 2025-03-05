import 'package:deliver/models/iceCreams(food).dart';

class Cart {
  IceCreams iceCreams;
  List<Addons> selectedAddons;
  int quantity;

  Cart({
    required this.iceCreams,
    required this.selectedAddons,
     this.quantity = 1,
  });

  double get TotalPrice{
    double addonsPrice = selectedAddons.fold(0, (sum, addons) => sum + addons.price);
    return (iceCreams.price + addonsPrice) * quantity;
  }
}