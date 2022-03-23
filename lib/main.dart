import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: ThirdyCard(),
    ));

class ThirdyCard extends StatefulWidget {
  const ThirdyCard({Key? key}) : super(key: key);

  @override
  State<ThirdyCard> createState() => _ThirdyCardState();
}

class _ThirdyCardState extends State<ThirdyCard> {
  List<String> quotes = [
    'Si thirdy ay pogi',
    'Si thirdy ay matalino',
    'si thirdy ay cute',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Awesome Quotes'),
        centerTitle: true,
      ),
      body: Column(
        children: quotes.map((quotes) => Text(quotes)).toList(),
      ),
    );
  }
}
