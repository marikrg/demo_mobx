import 'package:demo_mobx/model/product.dart';
import 'package:demo_mobx/repository/products_repository.dart';
import 'package:mobx/mobx.dart';

part 'products_controller.g.dart';

class ProductsController = _ProductsController with _$ProductsController;

abstract class _ProductsController with Store {
  @observable
  ObservableList<Product> products = ObservableList();
  @observable
  ObservableList<Product> favorites = ObservableList();
  @computed
  bool get hasFavorites => favorites.isNotEmpty;

  @action
  Future<void> loadProducts() async {
    products = ObservableList.of(await ProductsRepository().listProducts());
  }

  @action
  void toggleFavorite(Product product) {
    !favorites.contains(product)
        ? favorites.add(product)
        : favorites.remove(product);
  }
}
