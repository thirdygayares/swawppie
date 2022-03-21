import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my own import
import 'package:swawppie/components/horizontal_listview.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 100.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/banner/b1.png'),
          AssetImage('images/banner/b2.png'),
          AssetImage('images/banner/b3.png'),
          AssetImage('images/banner/b4.png'),
          AssetImage('images/banner/b5.jpg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(microseconds: 1000),
        dotSize: 4.0,
        dotColor: Color.fromARGB(255, 22, 1, 97),
        dotBgColor: Color.fromARGB(150, 255, 255, 255),
        indicatorBgPadding: 4.0,
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Color.fromARGB(255, 22, 1, 97),
        title: Text('Swappie'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text('Thirdy Gayares'),
              accountEmail: Text('gayaresthird@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: new BoxDecoration(
                color: Color.fromARGB(255, 22, 1, 97),
              ),
            ),
            //body
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                  title: Text('My Account'), leading: Icon(Icons.person)),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Order'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favorites'),
                leading: Icon(Icons.favorite),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.blue),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(
                  Icons.help,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          //image carousel begin here
          image_carousel,
          //categories Text
          //paddling widget
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Container(
              height: 25.0,
              color:  Color.fromARGB(255, 22, 1, 97),
              child: Container( 
                alignment: Alignment.center,
                
                child: Text('CATEGORY', style: TextStyle( 
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                   ),
                 ),
                ),
              ),
          ),

          //Horizontal list view begins here
          HorizontalList(),
        ],
      ),
    );
  }
}
