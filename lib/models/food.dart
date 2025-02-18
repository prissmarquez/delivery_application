import 'package:flutter/foundation.dart';

class IceCreams {
  final String name;
  final double price;
  final String description;
  final String image;
  final String category;
  List<addons> availableAddons;

  IceCreams({
  required this.name,
  required this.price,
  required this.description,
  required this.image,
  required this.availableAddons,
  required this.category
  });
}

// categories
enum IceCreamsCategory{
  milk,
  fruit,
  cream,
  water,
  yogurt
}

//addons
class addons {
  final String name;
  final double price;
  addons({
    required this.name,
    required this.price,
  });
}