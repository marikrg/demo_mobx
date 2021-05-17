import 'package:demo_mobx/model/product.dart';

class ProductsController {
  List<Product> productList =
      List<Product>.generate(10, (i) => Product(i, 'Item $i'));

  List<Product> favorites = [];
}
