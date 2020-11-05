// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Reviews.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Reviews _$ReviewsFromJson(Map<String, dynamic> json) {
  return Reviews(
    json['mal_id'] as int,
    json['url'] as String,
    json['type'] as String,
    json['helpful_count'] as int,
    json['date'] as String,
    json['reviewer'] == null
        ? null
        : Reviewer.fromJson(json['reviewer'] as Map<String, dynamic>),
    json['content'] as String,
  );
}

Map<String, dynamic> _$ReviewsToJson(Reviews instance) => <String, dynamic>{
      'mal_id': instance.mal_id,
      'url': instance.url,
      'type': instance.type,
      'helpful_count': instance.helpful_count,
      'date': instance.date,
      'reviewer': instance.reviewer,
      'content': instance.content,
    };
