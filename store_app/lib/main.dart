import 'package:flutter/material.dart';

import 'main-page.dart';
import 'home-screen.dart';
import 'mainPages.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Mainpage(),);
  }
}
