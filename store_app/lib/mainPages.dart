import 'package:flutter/material.dart';
import 'package:store_app/second.dart';
import 'package:store_app/third.dart';

import 'first.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
//  List products =
//   [
//     {'itemName' : 'nike shoes', 'image': 'https://img.technews.tw/wp-content/uploads/2022/04/25140538/RTFKT-x-Nike-Dunk-Genesis-CRYPTOKICKS.jpg', 'price': '330'},
//   {'itemName': 'adidas shoes', 'image': 'https://assets.adidas.com/images/w_600,f_auto,q_auto/4e894c2b76dd4c8e9013aafc016047af_9366/Superstar_Shoes_White_FV3284_01_standard.jpg', 'price': '500'},
//   {'itemName': 'puma shoes', 'image': 'https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_600,h_600/global/388167/01/sv01/fnd/PNA/fmt/png/Redon-Bungee-Shoes', 'price': '600'},
//   {'itemName': 'yeezy shoes', 'image': 'https://images.lifestyleasia.com/wp-content/uploads/sites/2/2022/12/23182915/Untitled-design-2022-12-23T155758.939-1600x900.jpg', 'price': '1000'},
//   {'itemName': 'yeezy slipper', 'image': 'https://cdn.salla.sa/PEwQN/K31SnOrW66VKeOU2XsKEaqFqYpEd4TEfayPVFKT1.jpg', 'price': '1050'},
//   {'itemName': 'fila shoes', 'image': 'https://www.footlocker.com.sa/assets/styles/FootLocker/image-thumb__71308__product_listing/316475395204_01.jpg', 'price': '900'},
//   {'itemName': 'puma slipper', 'image': 'https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_450,h_450/global/372277/03/sv01/fnd/SEA/fmt/png', 'price': '600'},
//   {'itemName': 'nike slipper', 'image': 'https://fgl.scene7.com/is/image/FGLSportsLtd/FGL_333319796_01_a-Nike-Womens-Offcourt-Sandals-BQ4632-011?wid=288&hei=288&op_sharpen=1&resMode=sharp2', 'price': '570'}
//   ];
  List<dynamic> products = [
    Item(
        itemName: 'nike shoes',
        image:
            'https://img.technews.tw/wp-content/uploads/2022/04/25140538/RTFKT-x-Nike-Dunk-Genesis-CRYPTOKICKS.jpg',
        price: '330',
        count: '50'),
    Item(
        itemName: 'adidas shoes',
        image:
            'https://assets.adidas.com/images/w_600,f_auto,q_auto/4e894c2b76dd4c8e9013aafc016047af_9366/Superstar_Shoes_White_FV3284_01_standard.jpg',
        price: '500',
        count: '0'),
    Item(
        itemName: 'puma shoes',
        image:
            'https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_600,h_600/global/388167/01/sv01/fnd/PNA/fmt/png/Redon-Bungee-Shoes',
        price: '600',
        count: '9'),
    Item(
        itemName: 'yeezy shoes',
        image:
            'https://images.lifestyleasia.com/wp-content/uploads/sites/2/2022/12/23182915/Untitled-design-2022-12-23T155758.939-1600x900.jpg',
        price: '1000',
        count: '10'),
    Item(
        itemName: 'yeezy slipper',
        image:
            'https://cdn.salla.sa/PEwQN/K31SnOrW66VKeOU2XsKEaqFqYpEd4TEfayPVFKT1.jpg',
        price: '1050',
        count: '0'),
    Item(
        itemName: 'fila shoes',
        image:
            'https://www.footlocker.com.sa/assets/styles/FootLocker/image-thumb__71308__product_listing/316475395204_01.jpg',
        price: '400',
        count: '0'),
    Item(
        itemName: 'yeezy slipper',
        image:
            'https://cdn.salla.sa/PEwQN/K31SnOrW66VKeOU2XsKEaqFqYpEd4TEfayPVFKT1.jpg',
        price: '1050',
        count: '0'),
    Item(
        itemName: 'yeezy slipper',
        image:
            'https://cdn.salla.sa/PEwQN/K31SnOrW66VKeOU2XsKEaqFqYpEd4TEfayPVFKT1.jpg',
        price: '1050',
        count: '49'),
    Item(
        itemName: 'yeezy slipper',
        image:
            'https://cdn.salla.sa/PEwQN/K31SnOrW66VKeOU2XsKEaqFqYpEd4TEfayPVFKT1.jpg',
        price: '1050',
        count: '9'),
    Item(
        itemName: 'yeezy slipper',
        image:
            'https://cdn.salla.sa/PEwQN/K31SnOrW66VKeOU2XsKEaqFqYpEd4TEfayPVFKT1.jpg',
        price: '1050',
        count: '0'),
  ];
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> Pages = [
      GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Second(
                              name: products[index].itemName,
                              price: products[index].price,
                              image: products[index].image,
                              countt: products[index].count,
                            )));
              },
              child: Card(
                color: Color.fromARGB(255, 255, 252, 225),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          products[index].itemName,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Image.network(
                      products[index].image,
                      height: 150,
                      width: 200,
                      fit: BoxFit.fill,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'the price : ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(products[index].price),
                        Text(
                          ' SAR ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
      ThirdPage(),
      FirstPage(),
    ];
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          selectedLabelStyle:
              TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          iconSize: 30,
          unselectedItemColor: Colors.black,
          unselectedFontSize: 20,
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          backgroundColor: const Color.fromARGB(255, 249, 239, 153),
          selectedFontSize: 30,
          onTap: (index) {
            setState(() {
              selectedindex = index;
            });
          },
          items: [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: 'profile', icon: Icon(Icons.account_balance)),
            BottomNavigationBarItem(
                label: 'basket', icon: Icon(Icons.shopping_basket)),
          ],
        ),
        appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 249, 239, 153),
            leading: Icon(
              Icons.more_horiz,
              color: Colors.black,
            ),
            title:
                const Text('Omar App', style: TextStyle(color: Colors.black))),
        body: Pages.elementAt(selectedindex));
  }
}

class Item {
  String itemName;
  String image;
  String price;
  String count;
  Item(
      {required this.itemName,
      required this.image,
      required this.price,
      required this.count});
}
