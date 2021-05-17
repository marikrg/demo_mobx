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
  final _productsController = GetIt.instance<ProductsController>();

  void _refresh() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body: _productsController.favorites.isNotEmpty
          ? ListView.builder(
              itemCount: _productsController.favorites.length,
              padding: const EdgeInsets.symmetric(vertical: 16),
              itemBuilder: (context, index) => FavoriteItemWidget(
                  _productsController.favorites[index], _refresh),
            )
          : Center(
              child: Text('No favorites added.'),
            ),
    );
  }
}
