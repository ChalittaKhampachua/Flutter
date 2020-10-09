import 'package:flutter/material.dart';
import 'package:flutter_app/model/RecommendAnime.dart';

class DetailScreen extends StatelessWidget {
  final RecommendAnime _data;
  DetailScreen(this._data);

  @override
  Widget build(BuildContext context) {
    return DetailWidget(this._data);
  }
}

class DetailState extends State<DetailWidget>{
  final RecommendAnime _data;
  DetailState(this._data);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          leading: BackButton(
              color: Colors.white,
              onPressed: () => Navigator.pop(context),
          ),
          title: Text(this._data.title),
          centerTitle: true
        ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children:[
          Expanded(
            child: Image.network('${this._data.image_url}'),
          ),
          Container(
            padding: EdgeInsets.all(30),
            child: Text('${this._data.title}'),
          )
        ],
      ),
    );
  }

}

class DetailWidget extends StatefulWidget{
  final RecommendAnime _data;
  DetailWidget(this._data);

  @override
  State<StatefulWidget> createState() => new DetailState(this._data);
}