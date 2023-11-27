import 'dart:convert';

import 'package:amazon_prime_clone/api/api_config/api_config.dart';
import 'package:amazon_prime_clone/models/movie_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

ValueNotifier<List<ApiDataModel>> searchResultsNotifier = ValueNotifier([]);

Future<void> searchData(String keyword) async {
  searchResultsNotifier.value.clear();
  searchResultsNotifier.notifyListeners();
  if(keyword==''){
    refreshUi();
    return;
  }
  final url = Uri.parse(
      '${ApiConfig.baseUrl}/search/multi?query=$keyword&include_adult=false&language=en-US&page=1&api_key=${ApiConfig.apiKey}');
  final response = await http.get(url);
  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    List<dynamic> results = data['results'];
    await Future.forEach(results, (element) {
      if(element['poster_path']!=null){
        searchResultsNotifier.value.add(ApiDataModel.fromJson(element));
      }
    });
  } else {
    throw ('Could not find data');
  }
  searchResultsNotifier.notifyListeners();
  // print(searchResultsNotifier.value);
}

Future<void> refreshUi()async{
  searchResultsNotifier.value.clear();
  searchResultsNotifier.notifyListeners();
  
}
