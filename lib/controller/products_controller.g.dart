// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProductsController on _ProductsController, Store {
  Computed<bool>? _$favIsNotEmptyComputed;

  @override
  bool get favIsNotEmpty =>
      (_$favIsNotEmptyComputed ??= Computed<bool>(() => super.favIsNotEmpty,
              name: '_ProductsController.favIsNotEmpty'))
          .value;

  final _$loadProductsAsyncAction =
      AsyncAction('_ProductsController.loadProducts');

  @override
  Future<void> loadProducts() {
    return _$loadProductsAsyncAction.run(() => super.loadProducts());
  }

  final _$_ProductsControllerActionController =
      ActionController(name: '_ProductsController');

  @override
  void toggleFavorite(Product product) {
    final _$actionInfo = _$_ProductsControllerActionController.startAction(
        name: '_ProductsController.toggleFavorite');
    try {
      return super.toggleFavorite(product);
    } finally {
      _$_ProductsControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
favIsNotEmpty: ${favIsNotEmpty}
    ''';
  }
}
