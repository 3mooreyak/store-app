import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  var name;
  var image;
  var price;
   Second({super.key, required this.name ,required this.image , required this.price});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(name ,style: TextStyle(fontSize: 40),),
          Image.network(image),
        ],
      ),
    );
  }
}