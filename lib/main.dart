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
      child: Text(
        'hello Thirdy',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 2.0,
          color: Colors.grey[600],
          fontFamily: 'OpenSans',
        ),
        ),
      ),

    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: Text('click'),
      backgroundColor: Color.fromARGB(255, 244, 67, 54),
    ),

    ),

  


  
  ));

