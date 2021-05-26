import 'package:demo_mobx/controller/products_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../model/product.dart';

class ProductItemWidget extends StatelessWidget {
  final Product product;

  ProductItemWidget({required this.product});

  final _productsController = GetIt.instance<ProductsController>();

  void _toggleFavorite() {
    _productsController.toggleFavorite(product);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: product.color,
        ),
        title: Text(
          'Item ${product.itemNo}',
          key: Key('text_${product.itemNo}'),
        ),
        trailing: IconButton(
            key: Key('icon_${product.itemNo}'),
            icon:
              Observer(builder: (_) =>
            _productsController.favorites.contains(product)
                ? Icon(Icons.favorite)
                : Icon(Icons.favorite_border)),
            onPressed: _toggleFavorite),
      ),
    );
  }
}
