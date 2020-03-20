//import 'package:flutter/foundation.dart';
//import 'package:flutter/material.dart';
//
//void main() {
//  runApp(MyApp());
//}
//

//import 'package:flutter/material.dart';

//// MyApp is a StatefulWidget. This allows updating the state of the
//// widget when an item is removed.
//class MyApp extends StatefulWidget {
//  MyApp({Key key}) : super(key: key);
//
//  @override
//  MyAppState createState() {
//    return MyAppState();
//  }
//}
//
//class MyAppState extends State<MyApp> {
//  final items = List<String>.generate(20, (i) => "Item ${i + 1}");
//
//  @override
//  Widget build(BuildContext context) {
//    final title = 'Dismissing Items';
//
//    return MaterialApp(
//      title: title,
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text(title),
//        ),
//        body: ListView.builder(
//          itemCount: items.length,
//          itemBuilder: (context, index) {
//            final item = items[index];
//
//            return Dismissible(
//              // Each Dismissible must contain a Key. Keys allow Flutter to
//              // uniquely identify widgets.
//              key: Key(item),
//              // Provide a function that tells the app
//              // what to do after an item has been swiped away.
//              onDismissed: (direction) {
//                // Remove the item from the data source.
//                setState(() {
//                  items.removeAt(index);
//                });
//
//                // Then show a snackbar.
//                Scaffold.of(context)
//                    .showSnackBar(SnackBar(content: Text("$item dismissed")));
//              },
//              // Show a red background as the item is swiped away.
//              background: Container(color: Colors.red),
//              child: ListTile(title: Text('$item')),
//            );
//          },
//        ),
//      ),
//    );
//  }
//}

//child: CupertinoPicker(
//children: <Widget>[
//Text(
//"40",
//style: TextStyle(color: ThemeColor.fontColor, fontSize: 20),
//),
//Text(
//"41",
//style: TextStyle(color: ThemeColor.fontColor, fontSize: 20),
//),
//Text(
//"42",
//style: TextStyle(color: ThemeColor.fontColor, fontSize: 20),
//),
//Text(
//"43",
//style: TextStyle(color: ThemeColor.fontColor, fontSize: 20),
//),
//Text(
//"44",
//style: TextStyle(color: ThemeColor.fontColor, fontSize: 20),
//),
//Text(
//"45",
//style: TextStyle(color: ThemeColor.fontColor, fontSize: 20),
//),
//],
//itemExtent: 25, //height of each item
//looping: false, squeeze: 1, magnification: 3,
//backgroundColor: ThemeColor.primaryColor,
//onSelectedItemChanged: (int index) {
//selectitem = index;
//},
//),

//import 'package:flutter/material.dart';
//import 'package:simple_animations/simple_animations.dart';
//
//class FadeInUi extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return SingleChildScrollView(
//      child: Container(
//        padding: EdgeInsets.all(20.0),
//        child: Column(
//          children: <Widget>[
//            FadeIn(1.0, HeaderPlaceholder()),
//            WhitespaceSeparator(),
//            Row(
//              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//              children: <Widget>[
//                FadeIn(2, CirclePlaceholder()),
//                FadeIn(2.33, CirclePlaceholder()),
//                FadeIn(2.66, CirclePlaceholder())
//              ],
//            ),
//            WhitespaceSeparator(),
//            FadeIn(4, CardPlaceholder()),
//            FadeIn(4.5, CardPlaceholder()),
//            FadeIn(5, CardPlaceholder()),
//            FadeIn(5.5, CardPlaceholder())
//          ],
//        ),
//      ),
//    );
//  }
//}
//
//class FadeIn extends StatelessWidget {
//  final double delay;
//  final Widget child;
//
//  FadeIn(this.delay, this.child);
//
//  @override
//  Widget build(BuildContext context) {
//    final tween = MultiTrackTween([
//      Track("opacity")
//          .add(Duration(milliseconds: 500), Tween(begin: 0.0, end: 1.0)),
//      Track("translateX").add(
//          Duration(milliseconds: 500), Tween(begin: 130.0, end: 0.0),
//          curve: Curves.easeOut)
//    ]);
//
//    return ControlledAnimation(
//      delay: Duration(milliseconds: (300 * delay).round()),
//      duration: tween.duration,
//      tween: tween,
//      child: child,
//      builderWithChild: (context, child, animation) => Opacity(
//        opacity: animation["opacity"],
//        child: Transform.translate(
//            offset: Offset(animation["translateX"], 0), child: child),
//      ),
//    );
//  }
//}
//
//class WhitespaceSeparator extends StatelessWidget {
//  const WhitespaceSeparator({
//    Key key,
//  }) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      height: 20,
//    );
//  }
//}
//
//class HeaderPlaceholder extends StatelessWidget {
//  const HeaderPlaceholder({
//    Key key,
//  }) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      height: 80.0,
//      decoration: BoxDecoration(
//          color: Colors.grey.shade400,
//          borderRadius: BorderRadius.all(Radius.circular(5))),
//    );
//  }
//}
//
//class CirclePlaceholder extends StatelessWidget {
//  const CirclePlaceholder({
//    Key key,
//  }) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    return ClipOval(
//      child: Container(
//        width: 50,
//        height: 50,
//        color: Colors.grey.shade300,
//      ),
//    );
//  }
//}
//
//class CardPlaceholder extends StatelessWidget {
//  const CardPlaceholder({
//    Key key,
//  }) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    return Padding(
//      padding: const EdgeInsets.only(bottom: 8),
//      child: Card(
//        child: Padding(
//          padding: const EdgeInsets.all(20.0),
//          child: Row(
//            crossAxisAlignment: CrossAxisAlignment.start,
//            children: <Widget>[
//              Padding(
//                padding: const EdgeInsets.only(right: 20.0),
//                child: ClipOval(
//                  child: Container(
//                    color: Colors.grey.shade300,
//                    width: 50,
//                    height: 50,
//                  ),
//                ),
//              ),
//              Expanded(
//                child: Column(
//                  children: <Widget>[
//                    Container(
//                      color: Colors.grey,
//                      height: 10,
//                    ),
//                    Container(
//                      margin: EdgeInsets.fromLTRB(20, 5, 0, 0),
//                      color: Colors.grey.shade300,
//                      height: 7,
//                    ),
//                    Container(
//                      margin: EdgeInsets.fromLTRB(20, 5, 0, 0),
//                      color: Colors.grey.shade300,
//                      height: 7,
//                    ),
//                    Container(
//                      margin: EdgeInsets.fromLTRB(20, 5, 0, 0),
//                      color: Colors.grey.shade300,
//                      height: 7,
//                    ),
//                  ],
//                ),
//              ),
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}

//class FadeInUiDemo extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return ExamplePage(
//      title: "Fade-in UI",
//      pathToFile: "fade_in_ui.dart",
//      delayStartup: false,
//      builder: (context) => FadeInUi(),
//    );
//  }
//}
//import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
//
//class CardColumnScreen extends StatefulWidget{
//  CardColumnScreen({Key key}) : super(key: key);
//
//  @override
//  _CardColumnScreenState createState() => _CardColumnScreenState();
//}
//
//class _CardColumnScreenState extends State<CardColumnScreen> {
//  @override
//  Widget build(BuildContext context) {
//    return AutoRefresh(
//      duration: const Duration(milliseconds: 2000),
//      child: Scaffold(appBar: AppBar(),
//        body: SafeArea(
//          child: SingleChildScrollView(
//            padding: const EdgeInsets.all(16.0),
//            child: AnimationLimiter(
//              child: Column(
//                children: AnimationConfiguration.toStaggeredList(
//                  duration: const Duration(milliseconds: 375),
//                  childAnimationBuilder: (widget) => SlideAnimation(
//                    horizontalOffset: MediaQuery.of(context).size.width / 2,
//                    child: FadeInAnimation(child: widget),
//                  ),
//                  children: [
//                    EmptyCard(
//                      width: MediaQuery.of(context).size.width,
//                      height: 166.0,
//                    ),
//                    Padding(
//                      padding: const EdgeInsets.symmetric(vertical: 8.0),
//                      child: Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                        children: [
//                          const EmptyCard(height: 50.0, width: 50.0),
//                          const EmptyCard(height: 50.0, width: 50.0),
//                          const EmptyCard(height: 50.0, width: 50.0),
//                        ],
//                      ),
//                    ),
//                    Row(
//                      children: [
//                        const Flexible(child: EmptyCard(height: 150.0)),
//                        const Flexible(child: EmptyCard(height: 150.0)),
//                      ],
//                    ),
//                    Padding(
//                      padding: const EdgeInsets.symmetric(vertical: 8.0),
//                      child: Row(
//                        children: [
//                          const Flexible(child: EmptyCard(height: 50.0)),
//                          const Flexible(child: EmptyCard(height: 50.0)),
//                          const Flexible(child: EmptyCard(height: 50.0)),
//                        ],
//                      ),
//                    ),
//                    EmptyCard(
//                      width: MediaQuery.of(context).size.width,
//                      height: 166.0,
//                    ),
//                  ],
//                ),
//              ),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//}
//class EmptyCard extends StatelessWidget {
//  final double width;
//  final double height;
//
//  const EmptyCard({
//    Key key,
//    this.width,
//    this.height,
//  }) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      width: width,
//      height: height,
//      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
//      decoration: BoxDecoration(
//        color: Colors.white,
//        borderRadius: const BorderRadius.all(Radius.circular(4.0)),
//        boxShadow: <BoxShadow>[
//          BoxShadow(
//            color: Colors.black12,
//            blurRadius: 4.0,
//            offset: const Offset(0.0, 4.0),
//          ),
//        ],
//      ),
//    );
//  }
//}
//class AutoRefresh extends StatefulWidget {
//  final Duration duration;
//  final Widget child;
//
//  AutoRefresh({
//    Key key,
//    @required this.duration,
//    @required this.child,
//  })  : assert(duration != null),
//        super(key: key);
//
//  @override
//  _AutoRefreshState createState() => _AutoRefreshState();
//}
//
//class _AutoRefreshState extends State<AutoRefresh> {
//  int keyValue;
//  ValueKey key;
//
//  Timer _timer;
//
//  @override
//  void initState() {
//    super.initState();
//
//    keyValue = 0;
//    key = ValueKey(keyValue);
//
//    _recursiveBuild();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      key: key,
//      child: widget.child,
//    );
//  }
//
//  void _recursiveBuild() {
//    _timer = Timer(
//      widget.duration,
//          () {
//        setState(() {
//          keyValue = keyValue + 1;
//          key = ValueKey(keyValue);
//          _recursiveBuild();
//        });
//      },
//    );
//  }
//
//  @override
//  void dispose() {
//    _timer?.cancel();
//    super.dispose();
//  }
//}
//import 'package:story_view/story_view.dart';
//
//class Home extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("Delicious Ghanaian Meals"),
//      ),
//      body: Container(
//        decoration: BoxDecoration(
//            borderRadius: BorderRadius.only(topRight: Radius.circular(100))),
//        margin: EdgeInsets.all(
//          8,
//        ),
//        child: ListView(
//          children: <Widget>[
//            Container(
//              decoration: BoxDecoration(
//                  borderRadius:
//                      BorderRadius.only(bottomLeft: Radius.circular(100))),
//              height: 300,
//              child: StoryView(
//                [
//                  StoryItem.inlineImage(
//                    NetworkImage(
//                        "https://www.grupoalvic.com/wp-content/plugins/productos-alvic/productos/muestras/LSC-negro.jpg"),
//                    caption: Text(
//                      "Omotuo & Nkatekwan; You will love this meal if taken as supper.",
//                      style: TextStyle(
//                        color: Colors.white,
//                        backgroundColor: Colors.black54,
//                        fontSize: 17,
//                      ),
//                    ),
//                  ),
//                ],
//                onStoryShow: (s) {
//                  print("Showing a story");
//                },
//                onComplete: () {
//                  print("Completed a cycle");
//                },
//                progressPosition: ProgressPosition.bottom,
//                repeat: false,
//                inline: true,
//              ),
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shoes_store/util/theme_color.dart';
import 'package:shoes_store/util/theme_style.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.yellow,
      child: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance.collection('sneakers').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return LinearProgressIndicator();

        return _buildList(context, snapshot.data.documents);
      },
    );
  }

  Widget _buildList(BuildContext context, List<DocumentSnapshot> snapshot) {
    return ListView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      padding: const EdgeInsets.only(top: 100.0),
      children: snapshot.map((data) => _buildListItem(context, data)).toList(),
    );
  }

  Widget _buildListItem(BuildContext context, DocumentSnapshot data) {
    final record = Record.fromSnapshot(data);

    return Padding(
      key: ValueKey(record.tag),
      padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {},
            child: Container(color: ThemeColor.red,height: 230,
              width: 220,
              child: Column(
                children: <Widget>[
                  Container(
                      height: 230,
                      decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(70),
                              bottom: Radius.elliptical(100, 100))),
                      child: Column(
                        children: <Widget>[

                          Container(
                            child: Text(record.title,
                                style: ThemeStyle.productTitle),
                          ),
                          Hero(
                            tag: record.tag,
                            child: Container(
                              padding: EdgeInsets.all(1),
                              child: Image.asset(
                                record.img,
                                height: 200,
                                width: 200,
                              ),
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
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
  int ratting;
  bool fav;
  final DocumentReference reference;

  Record.fromMap(Map<String, dynamic> map, {this.reference})
      : assert(map['title'] != null),
        assert(map['description'] != null),
        assert(map['img'] != null),
        assert(map['price'] != null),
        assert(map['tag'] != null),
        assert(map['ratting'] != null),
        assert(map['fav'] != null),
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
      "Record<:$title:$description:$img:$price:$tag:$ratting$fav:>";
}
