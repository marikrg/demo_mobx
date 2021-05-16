import 'package:mobx/mobx.dart';

part 'favorites_store.g.dart';

class FavoritesStore = _FavoritesStore with _$FavoritesStore;

abstract class _FavoritesStore with Store {
  @observable
  ObservableList<int> favoritesList = ObservableList();

  @action
  void toggleItem(int itemNo) {
    favoritesList.contains(itemNo)
        ? favoritesList.remove(itemNo)
        : favoritesList.add(itemNo);
  }
}
