import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoes_store/components/large_buttom.dart';
import 'package:shoes_store/models/product_model.dart';
import 'package:shoes_store/util/theme_color.dart';
import 'package:shoes_store/util/theme_style.dart';
import 'package:rating_bar/rating_bar.dart';
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';
import 'package:like_button/like_button.dart';



class ProductDetail extends StatefulWidget {
  final ProductModel productModel;

  const ProductDetail({Key key, this.productModel}) : super(key: key);

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  bool active = false;

//  void _showDialog(context) {
//    // flutter defined function
//    showDialog(
//      context: context,
//      builder: (BuildContext context) {
//        // return alert dialog object
//        return AlertDialog(shape: RoundedRectangleBorder(
//          borderRadius: const BorderRadius.all(
//            Radius.circular(30.0),
//          ),
//        ),
//          title: new Text('Escoge tu talla'),
//          content: Container(
//            height: 150.0,
//            child: Column(
//              mainAxisAlignment: MainAxisAlignment.spaceAround,
//              children: <Widget>[]
//            ),
//          ),
//        );
//      },
//    );
//  }


//  void _incrementCounter() {
//    showCupertinoModalPopup(context: context, builder: (cxt){
//      return MultiPicker(backgroundColor: ThemeColor.primaryColor,
//        confirmText: 'Confirm',
//        children: [
//          [{10: "a"},{20: "b"},{30: "c"},{40: "a"},{50: "b"},{60: "c"}],
//
//        ],
//        onConfirm: (clickedText){
//          this.setState((){
//          });
//          clickedText.toString();
//          Navigator.of(context).pop();
//        },
//      );
//    });
//  }


  void _settingModalBottomSheet(context) {

    showModalBottomSheet(
        backgroundColor: Colors.black,
        context: context,
        builder: (BuildContext bc) {
          return SolidBottomSheet(
            showOnAppear: true,
            maxHeight: 210,
            headerBar: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: ThemeColor.primaryColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        FlatButton(
                          child: Text(
                            'Cancelar',
                            style: TextStyle(fontSize: 16,color: ThemeColor.fontColor),
                          ),
                          onPressed: () {},
                        ),
                        Text(
                          'Escoge una talla',
                          style: TextStyle(fontFamily: 'Ubuntu',
                              fontSize: 21, color: ThemeColor.fontColor,fontWeight: FontWeight.bold),
                        ),
                        FlatButton(
                          child: Text(
                            'Confirmar',
                            style: TextStyle(fontSize: 16,color: ThemeColor.fontColor),
                          ),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            body: Center(
                child: CupertinoPicker(
              children: <Widget>[
                Text(
                  "40",
                  style: TextStyle(color: ThemeColor.fontColor, fontSize: 20),
                ),
                Text(
                  "41",
                  style: TextStyle(color: ThemeColor.fontColor, fontSize: 20),
                ),
                Text(
                  "42",
                  style: TextStyle(color: ThemeColor.fontColor, fontSize: 20),
                ),
                Text(
                  "43",
                  style: TextStyle(color: ThemeColor.fontColor, fontSize: 20),
                ),
                Text(
                  "44",
                  style: TextStyle(color: ThemeColor.fontColor, fontSize: 20),
                ),
                Text(
                  "45",
                  style: TextStyle(color: ThemeColor.fontColor, fontSize: 20),
                ),
              ],
              itemExtent: 25, //height of each item
              looping: false, squeeze: 1, magnification: 3,
              backgroundColor: ThemeColor.primaryColor,
              onSelectedItemChanged: (int index) {
              },
            )),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.primaryColor,
      appBar: AppBar(
        backgroundColor: ThemeColor.primaryColor,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    bottom: 20,
                    left: 50,
                    child: Container(
                      width: 300,
                      child: Hero(
                        tag: widget.productModel.tag,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, top: 70),
                          child: Image.asset(widget.productModel.img,
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: 1,
                    child: RatingBar(
                      initialRating: widget.productModel.ratting,
                      filledIcon: Icons.star,
                      emptyIcon: Icons.star_border,
                      halfFilledIcon: Icons.star_half,
                      isHalfAllowed: true,
                      filledColor: ThemeColor.accentColor,
                      emptyColor: ThemeColor.secondaryColor,
                      size: 30, onRatingChanged: (double rating) {  },
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.only(top: 20, right: 20, left: 20),
                decoration: BoxDecoration(
                  color: ThemeColor.secondaryColor,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(widget.productModel.title,
                            style: ThemeStyle.productDetailTitle),
                        LikeButton(
                          size: 40,
                          circleColor: CircleColor(
                              start: ThemeColor.white, end: ThemeColor.yellow),
                          bubblesColor: BubblesColor(
                            dotPrimaryColor: ThemeColor.white,
                            dotSecondaryColor: ThemeColor.red,
                          ),
                          likeBuilder: (bool isLiked) {
                            return isLiked
                                ? Icon(
                                    Icons.favorite,
                                    color
                                        : ThemeColor.red,
                                    size: 40,
                                  )
                                : Icon(
                                    Icons.favorite_border,
                                    color: ThemeColor.white,
                                    size: 35,
                                  );
                          },
                        )
                      ],
                    ),
                    SizedBox(height: 12),
                    Text(widget.productModel.price,
                        style: ThemeStyle.productDetailPrice),
                    SizedBox(height: 12),
                    Text(widget.productModel.description,
                        style: ThemeStyle.productDetailDescription),
                    SizedBox(height: 40),
                    Center(
                      child: LargeButton(
                        title: "Añadir al carro",
                        onTap: () {
                          active = true;
                          _settingModalBottomSheet(context);
                        },
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
