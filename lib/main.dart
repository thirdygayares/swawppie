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
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(30.0),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Text('thirdy'),
                  ),
                  Container(
                    child: Text('jose'),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.yellow,
              child: Text('2'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.red,
              child: Text('3'),
            ),
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
