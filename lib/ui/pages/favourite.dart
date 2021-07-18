import 'package:flutter/material.dart';
import 'package:favert_app/models/product.dart';
import 'package:favert_app/data/data_prodect.dart';
import 'package:favert_app/ui/widgets/producwiddets.dart';

class FavertHomPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: products.where((element)=>element.isFavourite).length ,
      itemBuilder: (context,index){
        return ProductWidget( products.where((element)=>element.isFavourite).toList()[index]);
      },
       
    );
  }

}