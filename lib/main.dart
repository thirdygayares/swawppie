import 'package:flutter/material.dart';

//my own import
//import 'home.dart';
//import 'widget.dart';

void main() =>
  //runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Practice()));

  //start of practice from the scratch

  runApp(MaterialApp(
    //scaffold widget ? navbar
    home: Scaffold(
      //appbar
      appBar: AppBar(
      title: Text('my First App'),
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 244, 67, 54),
      ), 
    body: Center( 
      child: Text('hello Thirdy'),
      ),

    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: Text('click'),
    ),

    ),

  


  
  ));

