import 'dart:developer';

import 'package:flutter_app/model/RecommendAnime.dart';

import 'Articles.dart';

class DataNew {
  final String request_hash;
  final bool request_cached;
  final int request_cache_expiry;
  final List<Articles> articles;

  DataNew({this.request_hash, this.request_cached, this.request_cache_expiry, this.articles});

  factory DataNew.fromJson(Map<String, dynamic> json) {
    return DataNew(
        request_hash: json['request_hash'],
        request_cached: json['request_cached'],
        request_cache_expiry: json['request_cache_expiry'],
        articles: List<Articles>.from(
            json['articles'].map((i) => Articles.fromJson(i)).toList())
    );
  }

}