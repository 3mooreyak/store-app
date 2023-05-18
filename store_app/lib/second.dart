import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  var name;
  var image;
  var price;
  var countt;
   Second({super.key, required this.name ,required this.image , required this.price, required this.countt});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.amber,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(name ,style: TextStyle(fontSize: 40),),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Image.network(image),
          ),
          Text('$price SAR',style: TextStyle(fontSize: 40),),
          Text(countt == '0' ?"not found":'count is $countt ',style: TextStyle(fontSize: 40),)
        ],
      ),
    );
  }
}