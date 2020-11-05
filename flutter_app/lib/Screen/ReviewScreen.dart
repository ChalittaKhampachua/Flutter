import 'package:flutter/material.dart';
import 'package:flutter_app/model/DataReview.dart';
import 'package:flutter_app/Repository/DataRepository.dart';
import 'dart:developer';

import 'package:flutter_app/model/Reviews.dart';

final titleName = 'Anime Review';
class ReviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ReviewWidget();
  }
}

class ReviewWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new ReviewState();
}

class ReviewState extends State<ReviewWidget>{

  Future<DataReview> resultReview;

  @override
  void initState() {
    super.initState();
    resultReview = fetchReview();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(titleName),
        ),
      ),
      body: FutureBuilder<DataReview>(
        future: resultReview,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return _buildReviewGrid(context, snapshot.data.reviews);
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

  Widget _buildReviewGrid(BuildContext context, List<Reviews> data) {
    return GridView.count(
      crossAxisCount: 3,
      padding: EdgeInsets.all(5),
      mainAxisSpacing: 30,
      crossAxisSpacing: 0,
      childAspectRatio: 1.0,
      children: List.generate(data.length, (index) => InkResponse(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Expanded(
              child: Image.network('https://cdn.myanimelist.net/images/userimages/11081.jpg?t=1600353000'),
            ),
            Container(
              padding: EdgeInsets.all(2),
              child: Text('${data[index]}'),
            )
          ],),
        onTap: () => _onItemClicked(data[index]),
      )
      ),
    );
  }

  void _onItemClicked(Reviews data) {
    // log('clicked: ${data.title}');
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => DetailScreen(data)),
    // );
  }
}
