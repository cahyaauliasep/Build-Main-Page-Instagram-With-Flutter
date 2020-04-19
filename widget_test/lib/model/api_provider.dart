import 'dart:convert';
import 'dart:core' as prefix0;
import 'dart:core';

import 'package:http/http.dart' show Client, Response;
import 'package:widget_test/data/popular_movies.dart';

class  ApiProvider {
  String apiKey = '44bd21c99fbfe7581dfdf8f87ad13bf9';
  String baseUrl= 'https://api.themoviedb.org/3';

  Client client = Client();
  Future<popular_movies> getPopularMovies() async{

    Response response = await client.get('$baseUrl//movie/popular?api_keys$apiKey');
    if (response.statusCode==200){
      return popular_movies.fromJson(jsonDecode(response.body));
    }else{
      throw Exception(response.statusCode);
    }
  }
}