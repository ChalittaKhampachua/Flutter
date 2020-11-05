import 'package:json_annotation/json_annotation.dart';
part 'Scores.g.dart';

@JsonSerializable()
class Scores {
  int overall;
  int story;
  int animation;
  int sound;
  int character;
  int enjoyment;

  Scores(
      this.overall,
        this.story,
        this.animation,
        this.sound,
        this.character,
        this.enjoyment);

  factory Scores.fromJson(Map<String, dynamic> json) => _$ScoresFromJson(json);
  Map<String, dynamic> toJson() => _$ScoresToJson(this);
}