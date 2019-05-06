import 'package:flutter_tmdb/src/models/movies.dart';
import 'package:rxdart/rxdart.dart';
import 'package:flutter_tmdb/src/resources/repository.dart';

class MoviesBloc {
  final _repository = Repository();
  final _moviesPopular = PublishSubject<Movies>();
  final _moviesUpcoming = PublishSubject<Movies>();
  final _moviesRated = PublishSubject<Movies>();

  Observable<Movies> get allPopularMovies => _moviesPopular.stream;

  Observable<Movies> get allUpcomingMovies => _moviesUpcoming.stream;

  Observable<Movies> get allTopRatedMovies => _moviesRated.stream;

  fetchAllPopularMovies() async {
    Movies popularMovies = await _repository.fetchAllPopularMovies();
    _moviesPopular.sink.add(popularMovies);
  }

  fetchAllUpcomingMovies() async {
    Movies upcomingMovies = await _repository.fetchAllUpcomingMovies();
    _moviesUpcoming.sink.add(upcomingMovies);
  }

  fetchAllTopRatedMovies() async {
    Movies topRatedMovies = await _repository.fetchAllTopRatedMovies();
    _moviesRated.sink.add(topRatedMovies);
  }

  dispose() {
    _moviesPopular.close();
    _moviesUpcoming.close();
    _moviesRated.close();
  }
}

final bloc = MoviesBloc();
