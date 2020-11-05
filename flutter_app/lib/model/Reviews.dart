import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_app/model/Reviewer.dart';
part 'Reviews.g.dart';

@JsonSerializable()
class Reviews {
  int mal_id;
  String url;
  String type;
  int helpful_count;
  String date;
  Reviewer reviewer;
  String content;

  Reviews(
        this.mal_id,
        this.url,
        this.type,
        this.helpful_count,
        this.date,
        this.reviewer,
        this.content
  );

  factory Reviews.fromJson(Map<String, dynamic> json) => _$ReviewsFromJson(json);
  Map<String, dynamic> toJson() => _$ReviewsToJson(this);
}