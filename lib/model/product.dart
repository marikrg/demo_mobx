import 'package:flutter/material.dart';

class Product {
  int itemNo;
  String name;

  Product(this.itemNo, this.name);

  get color => Colors.primaries[itemNo % Colors.primaries.length];
}
