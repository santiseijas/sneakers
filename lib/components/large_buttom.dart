import 'package:flutter/material.dart';
import 'package:shoes_store/util/theme_color.dart';
import 'package:shoes_store/util/theme_style.dart';

class LargeButton extends StatelessWidget {

  final String title;
  final Function onTap;

  const LargeButton({Key key, this.title, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 160,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: ThemeColor.accentColor,
            borderRadius: BorderRadius.circular(18)
        ),
        child: Text(title, style: ThemeStyle.productLargeButton),
      ),
    );
  }
}