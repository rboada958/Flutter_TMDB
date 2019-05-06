import 'package:flutter_tmdb/src/utils/utils.dart';

class Results {
  double vote_count;
  int id;
  bool video;
  double vote_average;
  String title;
  double popularity;
  String poster_path;
  String original_language;
  String original_title;
  List<int> genre_ids;
  String backdrop_path;
  bool adult;
  String overview;
  String release_date;

  Results(
      {this.vote_count,
      this.id,
      this.video,
      this.vote_average,
      this.title,
      this.popularity,
      this.poster_path,
      this.original_language,
      this.original_title,
      this.genre_ids,
      this.backdrop_path,
      this.adult,
      this.overview,
      this.release_date});

  String getPosterUrl() => getMediunPictureUrl(poster_path);

  String getBackDropUrl() => getLargePictureUrl(backdrop_path);

  String getGenres() => getGenreValues(genre_ids);

  int getReleaseYear() {
    if (release_date == null || release_date == "") return 0;
    return DateTime.parse(release_date).year;
  }

  Results.fromJsonMap(Map<String, dynamic> map)
      : vote_count = map["vote_count"].toDouble(),
        id = map["id"],
        video = map["video"],
        vote_average = map["vote_average"].toDouble(),
        title = map["title"],
        popularity = map["popularity"],
        poster_path = map["poster_path"],
        original_language = map["original_language"],
        original_title = map["original_title"],
        genre_ids = List<int>.from(map["genre_ids"]),
        backdrop_path = map["backdrop_path"],
        adult = map["adult"],
        overview = map["overview"],
        release_date = map["release_date"];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['vote_count'] = vote_count;
    data['id'] = id;
    data['video'] = video;
    data['vote_average'] = vote_average;
    data['title'] = title;
    data['popularity'] = popularity;
    data['poster_path'] = poster_path;
    data['original_language'] = original_language;
    data['original_title'] = original_title;
    data['genre_ids'] = genre_ids;
    data['backdrop_path'] = backdrop_path;
    data['adult'] = adult;
    data['overview'] = overview;
    data['release_date'] = release_date;
    return data;
  }
}
