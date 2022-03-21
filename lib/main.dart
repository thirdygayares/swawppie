import 'package:flutter/material.dart';

//my own import
//import 'home.dart';
//import 'widget.dart';

void main() =>
    //runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Practice()));

    //start of practice from the scratch

    runApp(MaterialApp(
      //scaffold widget ? navbar
      home: test(),
    ));

//REMEMBER STATELESS - cannot change every time
//STATEFUL - change

class test extends StatelessWidget {
  const test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(
        title: Text('my First App'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 244, 67, 54),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.cyan,
            child: Text('one'),
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.yellow,
            child: Text('two'),
          ),
          Container(
            padding: EdgeInsets.all(40.0),
            color: Colors.blue,
            child: Text('three'),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
        backgroundColor: Color.fromARGB(255, 244, 67, 54),
      ),
    );
  }
}
