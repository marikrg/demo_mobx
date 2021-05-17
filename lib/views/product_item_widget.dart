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
  var favoritesList = GetIt.instance<ProductsController>().favoritesList;

  void _toggleFavorite() {
    !favoritesList.contains(widget.product.itemNo)
        ? favoritesList.add(widget.product.itemNo)
        : favoritesList.remove(widget.product.itemNo);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor:
              Colors.primaries[widget.product.itemNo % Colors.primaries.length],
        ),
        title: Text(
          'Item ${widget.product.itemNo}',
          key: Key('text_${widget.product.itemNo}'),
        ),
        trailing: IconButton(
            key: Key('icon_${widget.product.itemNo}'),
            icon: favoritesList.contains(widget.product.itemNo)
                ? Icon(Icons.favorite)
                : Icon(Icons.favorite_border),
            onPressed: _toggleFavorite),
      ),
    );
  }
}
