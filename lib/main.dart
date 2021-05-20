import 'package:demo_mobx/controller/products_controller.dart';
import 'package:demo_mobx/views/favorites_page.dart';
import 'package:demo_mobx/views/products_page.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void main() {
  runApp(TestingApp());
  GetIt.instance.registerSingleton<ProductsController>(ProductsController());
}

class TestingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Testing Sample',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        ProductsPage.routeName: (context) => ProductsPage(),
        FavoritesPage.routeName: (context) => FavoritesPage(),
      },
      initialRoute: ProductsPage.routeName,
    );
  }
}
