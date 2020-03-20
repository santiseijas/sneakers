import 'package:flutter/material.dart';
import 'file:///C:/Users/seija/OneDrive/Escritorio/flutter/shoes_store/lib/widgets//product_widget.dart';
import 'package:shoes_store/util/theme_color.dart';

class TabBarWidget extends StatefulWidget {
  @override
  TabBarWidgetState createState() => TabBarWidgetState();
}

class TabBarWidgetState extends State<TabBarWidget>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TabBar(
            controller: _tabController,
            indicatorColor: ThemeColor.accentColor,
            labelColor: ThemeColor.accentColor,
            isScrollable: true,
            labelPadding: EdgeInsets.only(right: 45.0,left: 45),
            unselectedLabelColor: Color(0xFFCDCDCD),
            tabs: [
              Tab(
                child: Text('Hombre',
                    style: TextStyle(
                      fontSize: 21.0,fontFamily: 'Ubuntu'
                    )),
              ),
              Tab(
                child: Text('Mujer',
                    style: TextStyle(
                      fontSize: 21.0,fontFamily: 'Ubuntu'
                    )),
              ),
              Tab(
                child: Text('Niños',
                    style: TextStyle(
                      fontSize: 21.0,fontFamily: 'Ubuntu'
                    )),
              )
            ]),
        Container(
            height: MediaQuery.of(context).size.height ,
            child: TabBarView(
                controller: _tabController,
                children: [ProductWidget(), ProductWidget(), ProductWidget()]))
      ],
    );
  }
}
