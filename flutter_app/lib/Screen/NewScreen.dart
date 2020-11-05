import 'package:flutter/material.dart';
import 'package:flutter_app/Screen/DetailScreen.dart';
import 'package:flutter_app/model/Articles.dart';
import 'package:flutter_app/model/DataAnime.dart';
import 'package:flutter_app/Repository/DataRepository.dart';
import 'package:flutter_app/model/DataNew.dart';
import 'package:flutter_app/model/RecommendAnime.dart';
import 'dart:developer';

final titleName = 'Anime News';

class NewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NewWidget();
  }
}

class NewWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new NewState();
}

class NewState extends State<NewWidget> {
  Future<DataNew> resultNew;

  @override
  void initState() {
    super.initState();
    resultNew = fetchNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(titleName),
        ),
      ),
      body: FutureBuilder<DataNew>(
        future: resultNew,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return _buildNewGrid(context, snapshot.data.articles);
          } else if (snapshot.hasError) {
            return Center(child: Text("Error"));
          } else {
            return Center(
              child: Text("Loading..."),
            );
          }
        },
      ),
    );
  }

  Widget _buildNewGrid(BuildContext context, List<Articles> data) {
    return CustomScrollView(
      slivers: [
        SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 4.0,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                child: gridItem(data[index]),
              );
            },
            childCount: data.length,
          ),
        )
      ],
    );
  }

  Widget gridItem(Articles articles) => Container(
      child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          color: Colors.white54,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5,
          margin: EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage('${articles.imageUrl}'),
                    fit: BoxFit.fill)),
            child: Container(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Container(
                    color: Colors.white.withOpacity(0.5),
                    child: Text(articles.title),
                  ),
                )
            ),
          )
      )
  );

  void _onItemClicked(Articles data) {
    log('clicked: ${data.title}'); // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => DetailScreen(data)),
    // );
  }
}
