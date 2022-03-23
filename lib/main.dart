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

  Widget quoteTemplate(quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
              ),
            ),
          ],
        ),
      ),
    );
  }

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
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}
