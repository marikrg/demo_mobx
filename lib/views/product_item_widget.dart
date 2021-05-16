import 'package:demo_mobx/model/favorites.dart';
import 'package:flutter/material.dart';

class ProductItemWidget extends StatelessWidget {
  final int itemNo;

  const ProductItemWidget(
    this.itemNo,
  );

  @override
  Widget build(BuildContext context) {
    var favoritesList = Favorites();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.primaries[itemNo % Colors.primaries.length],
        ),
        title: Text(
          'Item $itemNo',
          key: Key('text_$itemNo'),
        ),
        trailing: IconButton(
          key: Key('icon_$itemNo'),
          icon: favoritesList.items.contains(itemNo)
              ? Icon(Icons.favorite)
              : Icon(Icons.favorite_border),
          onPressed: () {
            !favoritesList.items.contains(itemNo)
                ? favoritesList.add(itemNo)
                : favoritesList.remove(itemNo);
          },
        ),
      ),
    );
  }
}
