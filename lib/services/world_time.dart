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
      time = DateFormat.jm().format(now);
    } catch (e) {
      print('caught error: $e');
      time = 'could not get time data';
    }
  }
}
