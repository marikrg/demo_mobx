import 'package:demo_mobx/controller/products_controller.dart';
import 'package:demo_mobx/model/product.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class ProductItemWidget extends StatefulWidget {
  final Product product;

  const ProductItemWidget({Key key, this.product}) : super(key: key);

  @override
  _ProductItemWidgetState createState() => _ProductItemWidgetState();
}

class _ProductItemWidgetState extends State<ProductItemWidget> {
  final _productsController = GetIt.instance<ProductsController>();

  void _toggleFavorite() {
    !_productsController.favorites.contains(widget.product)
        ? _productsController.favorites.add(widget.product)
        : _productsController.favorites.remove(widget.product);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: widget.product.color,
        ),
        title: Text(
          'Item ${widget.product.itemNo}',
          key: Key('text_${widget.product.itemNo}'),
        ),
        trailing: IconButton(
            key: Key('icon_${widget.product.itemNo}'),
            icon: _productsController.favorites.contains(widget.product)
                ? Icon(Icons.favorite)
                : Icon(Icons.favorite_border),
            onPressed: _toggleFavorite),
      ),
    );
  }
}
