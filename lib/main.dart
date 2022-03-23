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
  int thirdy = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 61, 61),
      appBar: AppBar(
        title: Text('ThirdyGraphicsStudio'),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            thirdy += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  // backgroundImage: AssetImage('images/profile/jose.png'),
                  radius: 40.0,
                ),
              ),
              Divider(
                height: 60.0,
                color: Colors.grey[800],
              ),
              Text(
                'Name',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              // adding space
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Thirdy',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(
                height: 30.0,
              ),

              Text(
                'Location',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              // adding space
              SizedBox(
                height: 10.0,
              ),
              Text(
                '$thirdy',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(
                height: 30.0,
              ),

              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'gayaresthirdy@gmail.com',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18.0,
                      letterSpacing: 1.0,
                    ),
                  )
                ],
              ),
            ],
          )),
    );
  }
}
