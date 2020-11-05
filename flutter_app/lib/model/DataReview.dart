import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_app/model/Reviews.dart';
part 'DataReview.g.dart';

@JsonSerializable()
class DataReview {
  String request_hash;
  bool request_cached;
  int request_cache_expiry;
  List<Reviews> reviews;

  DataReview(this.request_hash, this.request_cached, this.request_cache_expiry, this.reviews);

  factory DataReview.fromJson(Map<String, dynamic> json) => _$DataReviewFromJson(json);
  Map<String, dynamic> toJson() => _$DataReviewToJson(this);
}