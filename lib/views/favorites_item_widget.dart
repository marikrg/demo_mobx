import 'package:flutter/material.dart';

class FavoriteItemWidget extends StatelessWidget {
  final int itemNo;
  final Function functionRemoveItem;

  const FavoriteItemWidget(
    this.itemNo,
    this.functionRemoveItem,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.primaries[itemNo % Colors.primaries.length],
        ),
        title: Text(
          'Item $itemNo',
          key: Key('favorites_text_$itemNo'),
        ),
        trailing: IconButton(
            key: Key('remove_icon_$itemNo'),
            icon: Icon(Icons.close),
            onPressed: () => functionRemoveItem(itemNo)),
      ),
    );
  }
}
