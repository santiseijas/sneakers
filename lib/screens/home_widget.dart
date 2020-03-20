import 'package:flutter/material.dart';
import 'package:shoes_store/components/bottom_bar.dart';
import 'package:shoes_store/components/bottom_fab.dart';
import 'package:shoes_store/components/custom_button.dart';
import 'aa.dart';
import 'package:shoes_store/util/theme_color.dart';
import 'package:shoes_store/widgets/tabs_widget.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sneakers',
          style: TextStyle(fontFamily: 'Anton',fontSize: 35),
        ),
        centerTitle: true,
        backgroundColor: ThemeColor.primaryColor,
        elevation: 0,
        actions: <Widget>[
          CustomButton(
            color: ThemeColor.primaryColor,
            icon: Icon(Icons.shopping_cart, color: Colors.white),onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage()),
            );
          },
            isNotify: true,
          )
        ],
      ),
      backgroundColor: ThemeColor.primaryColor,
      body: SafeArea(
        child: TabBarWidget(),
      ),
      floatingActionButton: BottomFab(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }


}
