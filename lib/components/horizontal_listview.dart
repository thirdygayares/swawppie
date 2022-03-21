// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      color: Color.fromRGBO(82, 171, 152, 1),
      child: ListView(
        scrollDirection: Axis.horizontal,
        
        children: <Widget>[
          
          Category(
            image_location: 'images/categories_icon/appliances.png',
            image_caption: 'Appliances',
          ),
           Category(
            image_location: 'images/categories_icon/mobile.png',
            image_caption: 'Mobile',
          ),

     Category(
            image_location: 'images/categories_icon/watches.png',
            image_caption: 'Watches',
          ),
           Category(
            image_location: 'images/categories_icon/accessories.png',
            image_caption: 'Accesories',
          ),


     Category(
            image_location: 'images/categories_icon/laptop.png',
            image_caption: 'Laptop',
          ),
         
          
        ],




        //second
         
        
         
       


      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_location = '', this.image_caption = ''});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: InkWell(
        onTap: () {},
        child: Container(
            width: 85.0,
            height: 75.0,
           
            child: ListTile(
              title: Image.asset(
                image_location,
                width: 90.0,
                height: 50.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
              padding: new EdgeInsets.all(5.0),
                child: Text(image_caption,  style: TextStyle( 
                  color: Colors.white,
                  fontSize: 8.5,
                   ),),
            ),
            ),
      ),
    ));
  }
}
