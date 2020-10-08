import 'dart:convert';

class RecommendAnime {
  final int mal_id;
  final String image_url;
  final String recommendation_url;
  final String title;
  final int recommendation_count;

  RecommendAnime({this.mal_id, this.image_url, this.recommendation_url, this.title, this.recommendation_count});

  factory RecommendAnime.fromJson(Map<String, dynamic> json) {
    return RecommendAnime(
        mal_id: json['mal_id'],
        image_url: json['image_url'],
        recommendation_url: json['recommendation_url'],
        title: json['title'],
        recommendation_count: json['recommendation_count']
    );
  }
}