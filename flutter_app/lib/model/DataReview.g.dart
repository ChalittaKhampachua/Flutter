// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DataReview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataReview _$DataReviewFromJson(Map<String, dynamic> json) {
  return DataReview(
    json['request_hash'] as String,
    json['request_cached'] as bool,
    json['request_cache_expiry'] as int,
    (json['reviews'] as List)
        ?.map((e) =>
            e == null ? null : Reviews.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DataReviewToJson(DataReview instance) =>
    <String, dynamic>{
      'request_hash': instance.request_hash,
      'request_cached': instance.request_cached,
      'request_cache_expiry': instance.request_cache_expiry,
      'reviews': instance.reviews,
    };
