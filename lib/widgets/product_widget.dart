import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoes_store/models/product_model.dart';
import 'package:shoes_store/screens/product_detail.dart';
import 'package:shoes_store/widgets/product_item.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProductWidget extends StatefulWidget {
  @override
  _ProductWidgetState createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 10),
        Container(
          height: 500,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemCount: products.length,
//              itemBuilder: (BuildContext context, int index) {}
            itemBuilder: (context, index) {
              ProductModel productModel = products[index];
              return Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: ProductItem(
                      productModel: productModel,
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => ProductDetail(
                                  productModel: productModel,
                                )));
                      },
                    ),
                  )
                ],
              );
            },
              ),
        )
      ],
    );
  }
}

class Record {
  int id;
  String title;
  String description;
  String img;
  String price;
  String tag;
  double ratting;
  bool fav;
  final DocumentReference reference;

  Record.fromMap(Map<String, dynamic> map, {this.reference})
      : assert(map['id'] != null),
        assert(map['title'] != null),
        assert(map['description'] != null),
        assert(map['img'] != null),
        assert(map['price'] != null),
        assert(map['tag'] != null),
        assert(map['ratting'] != null),
        assert(map['fav'] != null),
        id = map['id'],
        title = map['title'],
        description = map['description'],
        img = map['img'],
        price = map['price'],
        tag = map['tag'],
        ratting = map['ratting'],
        fav = map['fav'];

  Record.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);

  @override
  String toString() =>
      "Record<$id:$title:$description:$img:$price:$tag:$ratting$fav:>";
}
