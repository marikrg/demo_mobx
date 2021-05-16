class Favorites {
  final List<int> _favoriteItems = [];

  List<int> get items => _favoriteItems;

  void add(int itemNo) {
    _favoriteItems.add(itemNo);
  }

  void remove(int itemNo) {
    _favoriteItems.remove(itemNo);
  }
}
