import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime {
  String location = ""; // the location name for the UI
  String time = ""; //the time in that location
  String flag = " "; //url to an asset flag icon
  String url = ""; //location url for api endpoint
  bool isDaytime = true; //true or flase if daytime or night

  WorldTime({this.location = " ", this.flag = "", this.url = ""});

  Future<void> getTime() async {
    try {
      Response response = await http
          .get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));

      Map data = jsonDecode(response.body);
      //print(data);

      // get propertis for data
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);
      // print(datetime);
      // print(offset);

      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      //set the time property
      isDaytime = now.hour > 6 && now.hour < 20 ? true : false;

      time = DateFormat.jm().format(now);
    } catch (e) {
      print('caught error: $e');
      time = 'could not get time data';
    }
  }
}
