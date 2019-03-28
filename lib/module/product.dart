import 'package:flutter/foundation.dart';

enum Category{
all,accessories,clothing,home,
}

class Product{

  const Product(
      {@required this.id,
      @required this.price,
      @required this.name,
      @required this.category,
      @required this.isFeatured})
      :assert(category!=null),
        assert(price!=null),
        assert(name!=null),
        assert(category!=null),
        assert(isFeatured!=null);

      final int price;
      final String name;
      final bool isFeatured;
      final Category category;
      final int id;

    String get assetsName=>'$id-0.jpg';
    String get packagesName=>'shrine_images';

    @override
  String toString() {
    // TODO: implement toString
    return '$name (id=$id)';
  }

}
