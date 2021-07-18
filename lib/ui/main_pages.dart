

import 'package:flutter/material.dart';
import 'package:favert_app/ui/pages/home_pages.dart';
import 'package:favert_app/ui/pages/favourite.dart';


class MainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return DefaultTabController(length: 2,child:Scaffold(
     appBar: AppBar(
       title: Text("Prodect App"),
       bottom: TabBar(tabs:[
         Tab(icon: Icon(Icons.home),),
         Tab(icon: Icon(Icons.favorite),),
         Tab(icon: Icon(Icons.save),),


       ]),
     ) ,
     body: TabBarView(
       children: [
         HomPage(),
         FavertHomPage()

     ],),
     
     ),
     
     );
  }
  
}