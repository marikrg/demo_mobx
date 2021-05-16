import 'package:demo_mobx/model/favorites.dart';
import 'package:flutter/material.dart';

class ProductItemWidget extends StatefulWidget {
  final itemNo;

  const ProductItemWidget({Key key, this.itemNo}) : super(key: key);

  @override
  _ProductItemWidgetState createState() => _ProductItemWidgetState();
}

class _ProductItemWidgetState extends State<ProductItemWidget> {
  var favoritesList = Favorites();

  void _toggleFavorite() {
    !favoritesList.items.contains(widget.itemNo)
        ? favoritesList.add(widget.itemNo)
        : favoritesList.remove(widget.itemNo);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor:
              Colors.primaries[widget.itemNo % Colors.primaries.length],
        ),
        title: Text(
          'Item ${widget.itemNo}',
          key: Key('text_${widget.itemNo}'),
        ),
        trailing: IconButton(
            key: Key('icon_${widget.itemNo}'),
            icon: favoritesList.items.contains(widget.itemNo)
                ? Icon(Icons.favorite)
                : Icon(Icons.favorite_border),
            onPressed: _toggleFavorite),
      ),
    );
  }
}
