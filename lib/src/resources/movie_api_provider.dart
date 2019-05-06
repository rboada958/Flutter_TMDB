import 'dart:async';
import 'package:flutter_tmdb/src/models/movies.dart';
import 'package:flutter_tmdb/src/utils/Constantes.dart';
import 'package:http/http.dart' show Client;
import 'dart:convert';

class MovieApiProvider {
  Client client = Client();

  Future<Movies> fetchPopularMovies() async {
    print("entered");
    final response =
        await client.get(BASE_URL + "movie/popular?api_key=" + API_KEY);
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      return Movies.fromJsonMap(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }

  Future<Movies> fetchUpcomingMovies() async {
    print("entered");
    final response =
    await client.get(BASE_URL + "movie/upcoming?api_key=" + API_KEY);
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      return Movies.fromJsonMap(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }

  Future<Movies> fetchTopRatedMovies() async {
    print("entered");
    final response =
    await client.get(BASE_URL + "movie/top_rated?api_key=" + API_KEY);
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      return Movies.fromJsonMap(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }
}
