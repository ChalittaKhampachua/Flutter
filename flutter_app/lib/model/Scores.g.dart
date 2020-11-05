// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Scores.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Scores _$ScoresFromJson(Map<String, dynamic> json) {
  return Scores(
    json['overall'] as int,
    json['story'] as int,
    json['animation'] as int,
    json['sound'] as int,
    json['character'] as int,
    json['enjoyment'] as int,
  );
}

Map<String, dynamic> _$ScoresToJson(Scores instance) => <String, dynamic>{
      'overall': instance.overall,
      'story': instance.story,
      'animation': instance.animation,
      'sound': instance.sound,
      'character': instance.character,
      'enjoyment': instance.enjoyment,
    };
