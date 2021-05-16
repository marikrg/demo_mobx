import 'package:demo_mobx/store/favorites_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class ProductItemWidget extends StatelessWidget {
  final int itemNo;

  const ProductItemWidget(
    this.itemNo,
  );

  @override
  Widget build(BuildContext context) {
    FavoritesStore favoritesStore = GetIt.instance<FavoritesStore>();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Observer(
        builder: (_) => ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.primaries[itemNo % Colors.primaries.length],
          ),
          title: Text(
            'Item $itemNo',
            key: Key('text_$itemNo'),
          ),
          trailing: IconButton(
            key: Key('icon_$itemNo'),
            icon: favoritesStore.favoritesList.contains(itemNo)
                ? Icon(Icons.favorite)
                : Icon(Icons.favorite_border),
            onPressed: () {
              favoritesStore.toggleItem(itemNo);
            },
          ),
        ),
      ),
    );
  }
}
