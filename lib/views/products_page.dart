import 'package:demo_mobx/controller/products_controller.dart';
import 'package:demo_mobx/views/favorites_page.dart';
import 'package:demo_mobx/views/product_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class ProductsPage extends StatelessWidget {
  static final String routeName = '/products';

  final _productsController = GetIt.instance<ProductsController>();

  ProductsPage() {
    _init();
  }

  Future<void> _init() async {
    await _productsController.loadProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MobX Sample'),
        actions: <Widget>[
          TextButton.icon(
            style: TextButton.styleFrom(primary: Colors.white),
            onPressed: () {
              Navigator.pushNamed(context, FavoritesPage.routeName);
            },
            icon: Icon(Icons.favorite_border),
            label: Text('Favorites'),
          ),
        ],
      ),
      body: Observer(
          builder: (_) => ListView.builder(
                itemCount: _productsController.products.length,
                cacheExtent: 20.0,
                padding: const EdgeInsets.symmetric(vertical: 16),
                itemBuilder: (context, index) => ProductItemWidget(
                    product: _productsController.products[index]),
              )),
    );
  }
}
