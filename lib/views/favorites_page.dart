import 'package:demo_mobx/controller/products_controller.dart';
import 'package:demo_mobx/views/favorites_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class FavoritesPage extends StatefulWidget {
  static String routeName = '/favorites';

  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  var _favorites = GetIt.instance<ProductsController>().favoritesList;

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
      body: _favorites.isNotEmpty
          ? ListView.builder(
              itemCount: _favorites.length,
              padding: const EdgeInsets.symmetric(vertical: 16),
              itemBuilder: (context, index) =>
                  FavoriteItemWidget(_favorites[index], _removeItem),
            )
          : Center(
              child: Text('No favorites added.'),
            ),
    );
  }
}
