import 'package:flutter/material.dart';

class ProductModel{
  final String name;
  final double value;
  final String urlLink;

  ProductModel({
    @required this.name,
    @required this.value,
    @required this.urlLink
  });
}
