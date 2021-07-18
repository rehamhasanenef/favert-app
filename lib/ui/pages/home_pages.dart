

import 'package:flutter/material.dart';
import 'package:favert_app/models/product.dart';
import 'package:favert_app/data/data_prodect.dart';
import 'package:favert_app/ui/widgets/producwiddets.dart';

class HomPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: products.length ,
      itemBuilder: (context,index){
        return ProductWidget(products[index]);
      },
       
    );
  }

}