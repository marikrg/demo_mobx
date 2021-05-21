import 'package:demo_mobx/controller/products_controller.dart';
import 'package:demo_mobx/model/product.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class FavoriteItemWidget extends StatelessWidget {
  final Product product;
  final VoidCallback onRemove;

  const FavoriteItemWidget({
    required this.product,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    final _productsController = GetIt.instance<ProductsController>();

    void _onRemove(Product product) {
      _productsController.toggleFavorite(product);
      onRemove();
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
          leading: CircleAvatar(
            backgroundColor: product.color,
          ),
          title: Text(
            'Item ${product.itemNo}',
            key: Key('favorites_text_${product.itemNo}'),
          ),
          trailing: IconButton(
              key: Key('remove_icon_${product.itemNo}'),
              icon: Icon(Icons.close),
              onPressed: () => _onRemove(product))),
    );
  }
}
