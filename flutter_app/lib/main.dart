import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_app/Screen/DetailScreen.dart';
import 'package:flutter_app/model/DataAnime.dart';
import 'package:flutter_app/Repository/DataRepository.dart';
import 'package:flutter_app/model/RecommendAnime.dart';

void main() => runApp(MyApp());

final titleName = 'Anime Recommend';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: titleName,
      home: HomeWidget(),
    );
  }
}

class HomeState extends State<HomeWidget> {
  Future<DataAnime> resultAnime;

  @override
  void initState() {
    super.initState();
    resultAnime = fetchAnime();
  }

  Widget _buildAnimeGrid(BuildContext context, List<RecommendAnime> data) {
    return GridView.count(
      crossAxisCount: 3,
      padding: const EdgeInsets.all(5),
      mainAxisSpacing: 30,
      crossAxisSpacing: 0,
      childAspectRatio: 1.0,
      children: List.generate(data.length, (index) => InkResponse(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Expanded(
              child: Image.network('${data[index].image_url}'),
            ),
            Container(
              padding: EdgeInsets.all(2),
              child: Text('${data[index].title}'),
            )
          ],),
        onTap: () => _onItemClicked(data[index]),
      )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(titleName),
        ),
      ),
      body: FutureBuilder<DataAnime>(
        future: resultAnime,
        builder: (context, snapshot){
          if (snapshot.hasData) {
            return _buildAnimeGrid(context, snapshot.data.recommendations);
          }else if(snapshot.hasError){
            return Center(
              child:  Text("Error")
            );
          }else{
            return Center(
              child: Text("Loading..."),
            );
          }
        },
      ) ,
    );
  }

  void _onItemClicked(RecommendAnime data) {
    log('clicked: ${data.title}');
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DetailScreen(data)),
    );
  }

}

class HomeWidget extends StatefulWidget{
  @override
  State createState() => new HomeState();
}