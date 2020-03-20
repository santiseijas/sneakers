import 'package:flutter/material.dart';
import 'package:shoes_store/util/theme_color.dart';

class CustomButton extends StatelessWidget {

  final Widget icon;
  final Function onTap;
  final Color color;
  final bool isNotify;
  final bool isFav;

  const CustomButton({Key key, this.icon, this.onTap, this.color, this.isNotify = false,this.isFav=true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Container(
            height: 100,
            width: 40,
            decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle
            ),
            child: icon,
          ),

          isNotify ? Positioned(
            top: 13,
            right: 8,
            child: Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                  color: ThemeColor.accentColor,
                  shape: BoxShape.circle
              ),
            ),
          ) : Container()


        ],
      ),
    );
  }
}
