import 'package:flutter/material.dart';
import 'package:shoes_store/screens/shop_cart.dart';
import 'package:shoes_store/util/theme_color.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10.0,
        color: ThemeColor.primaryColor,
        elevation: 0,
        clipBehavior: Clip.antiAlias,
        child: Container(
            height: 50.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0)),
                color: ThemeColor.secondaryColor),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2 - 40.0,
                    child: IconButton(
                        icon: Icon(Icons.home),
                        color: ThemeColor.accentColor,
                        onPressed: () {
//                          onTap: Navigator.push(context, MaterialPageRoute(builder: (context)=> FadeInUi()));
                        }),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2 - 40.0,
                    child: IconButton(
                        icon: Icon(Icons.shopping_basket),
                        color: ThemeColor.fontColor,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ShopCart()),
                          );
                        }
                  ),
                  )])));
  }
}
