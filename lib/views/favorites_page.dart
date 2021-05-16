import 'package:demo_mobx/model/favorites.dart';
import 'package:demo_mobx/views/favorites_item_widget.dart';
import 'package:flutter/material.dart';

class FavoritesPage extends StatefulWidget {
  static String routeName = '/favorites_page';

  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  Favorites _favorites = Favorites();

  void _removeItem(int itemNo) {
    _favorites.remove(itemNo);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body: _favorites.items.isNotEmpty
          ? ListView.builder(
              itemCount: _favorites.items.length,
              padding: const EdgeInsets.symmetric(vertical: 16),
              itemBuilder: (context, index) =>
                  FavoriteItemWidget(_favorites.items[index], _removeItem),
            )
          : Center(
              child: Text('No favorites added.'),
            ),
    );
  }
}
