// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Reviewer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Reviewer _$ReviewerFromJson(Map<String, dynamic> json) {
  return Reviewer(
    json['url'] as String,
    json['image_url'] as String,
    json['username'] as String,
    json['episodes_seen'] as String,
    json['scores'] == null
        ? null
        : Scores.fromJson(json['scores'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ReviewerToJson(Reviewer instance) => <String, dynamic>{
      'url': instance.url,
      'image_url': instance.image_url,
      'username': instance.username,
      'episodes_seen': instance.episodes_seen,
      'scores': instance.scores,
    };
