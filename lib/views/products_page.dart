import 'package:demo_mobx/controller/products_controller.dart';
import 'package:demo_mobx/views/favorites_page.dart';
import 'package:demo_mobx/views/product_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class ProductsPage extends StatefulWidget {
  static String routeName = '/products';

  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  final _productsController = GetIt.instance<ProductsController>();

  @override
  void initState() {
    super.initState();
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
              Navigator.pushNamed(context, FavoritesPage.routeName)
                  .then((value) => setState(() => {}));
            },
            icon: Icon(Icons.favorite_border),
            label: Text('Favorites'),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _productsController.productList?.length,
        cacheExtent: 20.0,
        controller: ScrollController(),
        padding: const EdgeInsets.symmetric(vertical: 16),
        itemBuilder: (context, index) =>
            ProductItemWidget(product: _productsController.productList[index]),
      ),
    );
  }
}
