import 'package:demo_mobx/controller/products_controller.dart';
import 'package:demo_mobx/views/favorites_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class FavoritesPage extends StatefulWidget {
  static final String routeName = '/favorites';

  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  final _productsController = GetIt.instance<ProductsController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body: Observer(
          builder: (_) => _productsController.favIsNotEmpty
              ? ListView.builder(
                  itemCount: _productsController.favorites.length,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  itemBuilder: (context, index) => FavoriteItemWidget(
                      product: _productsController.favorites[index]))
              : Center(
                  child: Text('No favorites added.'),
                )),
    );
  }
}
