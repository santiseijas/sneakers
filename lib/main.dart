import 'package:flutter/material.dart';
import 'package:shoes_store/screens/home_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sneakers Shop',
      debugShowCheckedModeBanner: false,

      home: HomeWidget(),
    );
  }
}
