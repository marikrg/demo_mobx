import 'package:flutter/material.dart';

class Product {
  int itemNo;
  String name;

  Product({@required this.itemNo, @required this.name});

  Color get color => Colors.primaries[itemNo % Colors.primaries.length];
}
