import 'package:demo_mobx/model/product.dart';

class ProductsRepository {
  Future<List<Product>> listProducts() async {
    return List<Product>.generate(10, (i) => Product(i, 'Item $i'));
  }
}
