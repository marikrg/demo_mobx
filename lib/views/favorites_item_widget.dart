import 'package:demo_mobx/store/favorites_store.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class FavoriteItemWidget extends StatelessWidget {
  final int itemNo;

  const FavoriteItemWidget(
    this.itemNo,
  );

  @override
  Widget build(BuildContext context) {
    FavoritesStore favoritesStore = GetIt.instance<FavoritesStore>();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.primaries[itemNo % Colors.primaries.length],
        ),
        title: Text(
          'Item $itemNo',
          key: Key('favorites_text_$itemNo'),
        ),
        trailing: IconButton(
          key: Key('remove_icon_$itemNo'),
          icon: Icon(Icons.close),
          onPressed: () {
            favoritesStore.toggleItem(itemNo);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Removed from favorites.'),
                duration: Duration(seconds: 1),
              ),
            );
          },
        ),
      ),
    );
  }
}
