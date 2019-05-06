import 'dart:async';
import 'package:flutter_tmdb/src/models/movies.dart';

import 'movie_api_provider.dart';

class Repository {
  final moviesApiProvider = MovieApiProvider();

  Future<Movies> fetchAllPopularMovies() => moviesApiProvider.fetchPopularMovies();

  Future<Movies> fetchAllUpcomingMovies() => moviesApiProvider.fetchUpcomingMovies();

  Future<Movies> fetchAllTopRatedMovies() => moviesApiProvider.fetchTopRatedMovies();

}
