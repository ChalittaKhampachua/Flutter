import 'dart:developer';

import 'package:flutter_app/model/RecommendAnime.dart';

class DataAnime {
  final String request_hash;
  final bool request_cached;
  final int request_cache_expiry;
  final List<RecommendAnime> recommendations;

  DataAnime({this.request_hash, this.request_cached, this.request_cache_expiry, this.recommendations});

  factory DataAnime.fromJson(Map<String, dynamic> json) {
    return DataAnime(
        request_hash: json['request_hash'],
        request_cached: json['request_cached'],
        request_cache_expiry: json['request_cache_expiry'],
        recommendations: List<RecommendAnime>.from(
            json['recommendations'].map((i) => RecommendAnime.fromJson(i)).toList())
    );
  }

}