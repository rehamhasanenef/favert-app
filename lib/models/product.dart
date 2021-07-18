import 'package:flutter/cupertino.dart';

class Product{
  String name;
  String desciption;
  bool isFavourite;
  String image;
  Product({
    @required this.name,
    @required this.desciption,
    this.isFavourite =false,
    @required this.image,
 
  });
}