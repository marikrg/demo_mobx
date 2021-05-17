import 'package:demo_mobx/model/product.dart';
import 'package:demo_mobx/repository/products_repository.dart';

class ProductsController {
  List<Product> productList;
  List<Product> favorites = [];

  Future<void> loadProducts() async {
    productList = await ProductsRepository().listProducts();
  }
}
