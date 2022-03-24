import 'package:flutter/material.dart';
import 'package:swawppie/pages/choose_location.dart';
import 'package:swawppie/pages/loading.dart';

//my own import
import 'package:swawppie/pages/home.dart';

void main() => runApp(MaterialApp(
      //creating routes
      //to first route
      initialRoute: '/',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation(),
      },
    ));
