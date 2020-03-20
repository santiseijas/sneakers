import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:shoes_store/models/product_model.dart';
import 'package:shoes_store/util/theme_color.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class ShopCart extends StatelessWidget {
  final ProductModel productModel;

  const ShopCart({Key key, this.productModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.primaryColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Cesta',
          style: TextStyle(fontSize: 35, fontFamily: 'Anton'),
        ),
        backgroundColor: ThemeColor.primaryColor,
        elevation: 0,
      ),
      body: AnimationLimiter(
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: ( context,  index) {
            ProductModel productModel = products[index];
            return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 600),
              child: SlideAnimation(
                verticalOffset: 50.0,
                child: FadeInAnimation(
                  child: Column(children: <Widget>[SizedBox(height: 5,),ItemRow(
                    productModel: productModel,
                  ),],)
                ),
              ),
            );
          },
        ),
      ),
//      body: ListView.builder(
//          itemCount: products.length,
//          itemBuilder: (context, index) {
//            ProductModel productModel = products[index];
//            return new Column(
//              children: <Widget>[
//                SizedBox(
//                  height: 5,
//                ),
//                ItemRow(
//                  productModel: productModel,
//                ),
//              ],
//            );
//          }),
    );
  }
}

class ItemRow extends StatelessWidget {
  final ProductModel productModel;
  final int index;
  const ItemRow({Key key, this.productModel, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final shoesImg = new Container(
      height: 150,
      alignment: FractionalOffset.bottomLeft,
      child: new Image(
        image: new AssetImage(productModel.img),
        height: 150.0,
        width: 150.0,
      ),
    );
    final shoesCard = new Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 30),
        child: Column(
          children: <Widget>[
            Text(
              productModel.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'Ubuntu',
                color: ThemeColor.white,
              ),
            ),
            Container(
              height: 3,
              width: 70,
              color: ThemeColor.white,
            ),
          ],
        ),
      ),
      width: 480,
      height: 130.0,
      margin: new EdgeInsets.only(left: 46.0),
      decoration: new BoxDecoration(
        color: ThemeColor.secondaryColor,
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            topRight: Radius.circular(5)),
//        boxShadow: <BoxShadow>[
//          new BoxShadow(
//            color: ThemeColor.accentColor,
//            blurRadius: 5.0,
//            offset: new Offset(1.0, 1.0),
//          ),
        //       ],
      ),
    );

    return new Container(
        child: Slidable(
      child: Container(
        height: 130,
        child: new Stack(
          children: <Widget>[
            shoesCard,
            shoesImg,
          ],
        ),
      ),
      actionPane: SlidableStrechActionPane(),
      secondaryActions: <Widget>[
        IconSlideAction(
          caption: 'Borrar',
          color: Colors.red,
          icon: Icons.delete_forever,
        ),
      ],
    ));
  }
}
