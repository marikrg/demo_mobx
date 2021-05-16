// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FavoritesStore on _FavoritesStore, Store {
  final _$favoritesListAtom = Atom(name: '_FavoritesStore.favoritesList');

  @override
  ObservableList<int> get favoritesList {
    _$favoritesListAtom.reportRead();
    return super.favoritesList;
  }

  @override
  set favoritesList(ObservableList<int> value) {
    _$favoritesListAtom.reportWrite(value, super.favoritesList, () {
      super.favoritesList = value;
    });
  }

  final _$_FavoritesStoreActionController =
      ActionController(name: '_FavoritesStore');

  @override
  void toggleItem(int itemNo) {
    final _$actionInfo = _$_FavoritesStoreActionController.startAction(
        name: '_FavoritesStore.toggleItem');
    try {
      return super.toggleItem(itemNo);
    } finally {
      _$_FavoritesStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
favoritesList: ${favoritesList}
    ''';
  }
}
