import 'package:flutter/material.dart';
import 'package:shoes_store/util/theme_color.dart';

class ThemeStyle {
  static final TextStyle homeTitle = TextStyle(
      fontFamily: 'Anton',
      color: ThemeColor.fontColor,
      fontSize: 30,
      fontWeight: FontWeight.bold);

  static final TextStyle productInfo = TextStyle(
      fontFamily: 'Anton',
      color: ThemeColor.accentColor,
      fontSize: 16,
      fontWeight: FontWeight.bold);

  static final TextStyle productTitle = TextStyle(
    fontFamily: 'Anton',
    color: ThemeColor.fontColor,
    fontSize: 15,
  );

  static final TextStyle productDetailTitle = TextStyle(
      fontFamily: 'Anton',
      letterSpacing: 2,
      color: ThemeColor.fontColor,
      fontSize: 23,
      fontWeight: FontWeight.bold);

  static final TextStyle productDetailPrice =
      TextStyle(fontFamily: 'Anton', color: Colors.white, fontSize: 16);

  static final TextStyle productDetailDescription = TextStyle(
      fontFamily: 'Ubuntu',
      letterSpacing: -1,
      color: ThemeColor.white,
      height: 1.5,
      fontWeight: FontWeight.bold,
      wordSpacing: 1);

  static final TextStyle productLargeButton = TextStyle(
      fontFamily: 'Anton',
      letterSpacing: 1,
      color: Colors.white,
      fontWeight: FontWeight.bold);

  static final TextStyle footerTile =
      TextStyle(color: ThemeColor.fontColor, fontSize: 14, height: 1.3);
}
