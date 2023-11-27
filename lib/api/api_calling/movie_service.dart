import 'dart:convert';
import 'package:amazon_prime_clone/api/api_config/api_config.dart';
import 'package:amazon_prime_clone/models/movie_model.dart';
import 'package:http/http.dart' as http;



class MovieService{

      static Future<List<ApiDataModel>> fetchMovies(String category) async{

    final url = Uri.parse('${ApiConfig.baseUrl}$category${ApiConfig.apiKey}');
    final response = await http.get(url);
    if(response.statusCode == 200){
      final data = json.decode(response.body);
      final List<dynamic> results = data['results'];
      return results.map((json) => ApiDataModel.fromJson(json)).toList();
    }else{
      throw Exception('Could Not Fetch Movies');
    }
  }
}