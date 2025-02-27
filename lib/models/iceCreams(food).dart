

class IceCreams {
  final String name;
  final double price;
  final String description;
  final String imagePath;
  final IceCreamsCategory category;
  List<Addons> availableAddons;

  IceCreams({
  required this.name,
  required this.price,
  required this.description,
  required this.imagePath,
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
  popsicle,
}

//addons
class Addons {
  final String name;
  final double price;
  Addons({
    required this.name,
    required this.price,
  });
}