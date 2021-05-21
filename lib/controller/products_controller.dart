import 'package:demo_mobx/model/product.dart';
import 'package:demo_mobx/repository/products_repository.dart';

class ProductsController {
  List<Product> products = [];
  List<Product> favorites = [];

  Future<void> loadProducts() async {
    products = await ProductsRepository().listProducts();
  }

  void toggleFavorite(Product product) {
    !favorites.contains(product)
        ? favorites.add(product)
        : favorites.remove(product);
  }
}
