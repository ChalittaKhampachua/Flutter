import 'package:flutter/material.dart';
import 'package:flutter_app/Screen/DetailScreen.dart';
import 'dart:developer';
import 'Screen/AnimeScreen.dart';


void main() => runApp(MyApp());

final titleName = 'Flutter Learning';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: titleName,
      home: HomeWidget(),
    );
  }
}

class HomeWidget extends StatefulWidget{
  @override
  State createState() => new HomeState();
}

class HomeState extends State<HomeWidget> {
  var menuList = ["Http", "Sliver"];
  var screenList = [AnimeScreen(), AnimeScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(titleName),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return InkWell(
                  child: Container(
                    alignment: Alignment.center,
                    child: listItem(Colors.tealAccent.withOpacity(0.6) ,menuList[index]),
                  ),
                  onTap: () => _onItemClicked(menuList[index], screenList[index]),
                );

              },
              childCount: 2,
            ),
          )
        ],
      )
    );
  }

  Widget listItem(Color background, String title) => Container(
    height: 80.0,
    child: Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: background,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),),
      elevation: 5,
      margin: EdgeInsets.all(10),
      child: Center(
        child: Text(
          "$title",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
              fontWeight: FontWeight.normal),
        ),
      ),
    ),
  );

  _onItemClicked(String menuList, StatelessWidget screenList) {
    log('menu clicked: $menuList');
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screenList),
    );
  }

}