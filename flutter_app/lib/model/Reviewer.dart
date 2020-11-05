import 'package:json_annotation/json_annotation.dart';

import 'Scores.dart';
part 'Reviewer.g.dart';

@JsonSerializable()
class Reviewer {
  String url;
  String image_url;
  String username;
  String episodes_seen;
  Scores scores;

  Reviewer(
    this.url,
    this.image_url,
    this.username,
    this.episodes_seen,
    this.scores
  );

  factory Reviewer.fromJson(Map<String, dynamic> json) => _$ReviewerFromJson(json);
  Map<String, dynamic> toJson() => _$ReviewerToJson(this);
}