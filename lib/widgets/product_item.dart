import 'package:flutter/material.dart';
import 'package:shoes_store/models/product_model.dart';

import 'package:shoes_store/util/theme_color.dart';
import 'package:shoes_store/util/theme_style.dart';

class ProductItem extends StatelessWidget {
  final ProductModel productModel;
  final Function onTap;

  const ProductItem({Key key, this.productModel, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 220,
        child: Column(
          children: <Widget>[
            Container(
                height: 350,
                decoration: BoxDecoration(
                    color: ThemeColor.primaryColor,
                    borderRadius: BorderRadius.vertical(
                        top: Radius.circular(70),
                        bottom: Radius.elliptical(100, 100))),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Text(productModel.title,
                          style: ThemeStyle.productTitle),
                    ),
                    Hero(
                      tag: productModel.tag,
                      child: Container(
                        padding: EdgeInsets.all(1),
                        child: Image.asset(
                          productModel.img,height: 200,width: 200,
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
