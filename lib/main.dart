// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:demo_mobx/store/favorites_store.dart';
import 'package:demo_mobx/views/favorites_page.dart';
import 'package:demo_mobx/views/products_page.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void main() {
  final getIt = GetIt.instance;
  getIt.registerSingleton<FavoritesStore>(FavoritesStore());

  runApp(TestingApp());
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
