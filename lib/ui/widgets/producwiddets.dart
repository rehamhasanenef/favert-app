

import 'package:flutter/material.dart';
import 'package:favert_app/models/product.dart';

class ProductWidget extends StatefulWidget{
  Product protect;
    ProductWidget(this.protect);

  @override
  _ProductWidgetState createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
       decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
               borderRadius: BorderRadius.circular(10),
         ),
      child: 
      Row(children: [
         Container(
           padding: EdgeInsets.all(10),
           margin: EdgeInsets.all(10),
           decoration: BoxDecoration(
             image: DecorationImage(
               fit: BoxFit.cover,
               image:NetworkImage(widget.protect.image) ),
               borderRadius: BorderRadius.circular(10),
                  


         ),
         ),
         Expanded(
           child:
           Column(children: [
             Text(widget.protect.name),
             Text(widget.protect.desciption)
           ],) ,),
           IconButton(
             onPressed: (){
                widget.protect.isFavourite= !widget.protect.isFavourite;
                setState((){});
             },
             icon: Icon(
               Icons.favorite,
               color:widget.protect.isFavourite? Colors.red: Colors.white
             ),
           )
          
    ],),);
  }
}