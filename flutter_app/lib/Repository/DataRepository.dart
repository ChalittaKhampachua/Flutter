import 'dart:developer';
import 'dart:convert';
import 'dart:async';

import 'package:flutter_app/model/DataAnime.dart';
import 'package:flutter_app/model/DataNew.dart';
import 'package:flutter_app/model/DataReview.dart';
import 'Config.dart';

import 'package:http/http.dart' as http;

Future<DataAnime> fetchAnime() async {
  final response = await http.get(BASE_URL+RECOMMENDATIONS, headers: {'Access-Control-Allow-Origin': '*'});
  log('response: ${response.statusCode}');

  if (response.statusCode == 200) {
    log('response: ${response.body.toString()}');
    return DataAnime.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load Anime');
  }
}

Future<DataReview> fetchReview() async {
  final response = await http.get(BASE_URL+REVIEWS, headers: {'Access-Control-Allow-Origin': '*'});
  log('response: ${response.statusCode}');

  if (response.statusCode == 200) {
    log('response: ${response.body.toString()}');
    return DataReview.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load Anime');
  }
}

Future<DataNew> fetchNews() async {
  final response = await http.get(BASE_URL+NEWS, headers: {'Access-Control-Allow-Origin': '*'});
  log('response: ${response.statusCode}');

  if (response.statusCode == 200) {
    log('response: ${response.body.toString()}');
    return DataNew.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load Anime');
  }
}