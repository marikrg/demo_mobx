import 'package:demo_mobx/store/favorites_store.dart';
import 'package:demo_mobx/views/favorites_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class FavoritesPage extends StatefulWidget {
  static String routeName = '/favorites_page';

  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  FavoritesStore favoritesStore = GetIt.instance<FavoritesStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Favorites'),
        ),
        body: Observer(
            builder: (_) => favoritesStore.favoritesList.isNotEmpty
                ? ListView.builder(
                    itemCount: favoritesStore.favoritesList.length,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    itemBuilder: (context, index) =>
                        FavoriteItemWidget(favoritesStore.favoritesList[index]),
                  )
                : Center(
                    child: Text('No favorites added.'),
                  )));
  }
}
