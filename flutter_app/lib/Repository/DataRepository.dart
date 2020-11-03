import 'dart:developer';
import 'dart:convert';
import 'dart:async';

import 'package:flutter_app/model/DataAnime.dart';
import 'Config.dart';

import 'package:http/http.dart' as http;

Future<DataAnime> fetchAnime() async {
  final response = await http.get(BASE_URL, headers: {'Access-Control-Allow-Origin': '*'});
  log('response: ${response.statusCode}');

  if (response.statusCode == 200) {
    log('response: ${response.body.toString()}');
    return DataAnime.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load Anime');
  }
}