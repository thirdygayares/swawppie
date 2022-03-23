import 'package:flutter/material.dart';
import 'quotes.dart';

void main() => runApp(MaterialApp(
      home: ThirdyCard(),
    ));

class ThirdyCard extends StatefulWidget {
  const ThirdyCard({Key? key}) : super(key: key);

  @override
  State<ThirdyCard> createState() => _ThirdyCardState();
}

class _ThirdyCardState extends State<ThirdyCard> {
  List<Quote> quotes = [
    Quote(author: 'Thirdy Gayares', text: "ako ay pogi"),
    Quote(author: 'Jose Gayares', text: "ako ay guwapo"),
    Quote(author: 'max Gayares', text: "ako ay cute"),
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
        children: quotes
            .map((quotes) => Text('${quotes.text} - ${quotes.author}'))
            .toList(),
      ),
    );
  }
}
