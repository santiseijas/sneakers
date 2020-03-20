import 'package:flutter/material.dart';
import 'package:shoes_store/util/theme_color.dart';

class BottomFab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: ThemeColor.fontColor,
      child: Icon(Icons.favorite,color: Colors.red,),
    );
  }
}
