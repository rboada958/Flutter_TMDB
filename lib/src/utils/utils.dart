final String _imageUrlMedium = "https://image.tmdb.org/t/p/w300";
final String _imageUrlLarge = "https://image.tmdb.org/t/p/w500";

String getMediunPictureUrl(String path) => _imageUrlMedium + path;

String getLargePictureUrl(String path) => _imageUrlLarge + path;

Map<int, String> _genreMap = {
  28: 'Acción',
  12: 'Aventura',
  16: 'Animación',
  35: 'Comedia',
  80: 'Crimen',
  99: 'Documental',
  18: 'Drama',
  10751: 'Familia',
  14: 'Fantasía',
  36: 'Historia',
  27: 'Terror',
  10402: 'Música',
  9648: 'Misterio',
  10749: 'Romance',
  878: 'Ciencia ficción',
  10770: 'Película de TV',
  53: 'Suspenso',
  10752: 'Guerra',
  37: 'Oeste',
  10759: 'Acción & Aventura',
  10762: 'Infantil',
  10763: 'Noticias',
  10764: 'Realities',
  10765: 'Sci & Fantasia',
  10766: 'Serial',
  10767: 'Conversaciòn',
  10768: 'Guerra y Politica',
};

List<String> genresToList(List<dynamic> genreIds) =>
    genreIds.map((id) => _genreMap[id]).toList();

String getGenreValues(List<dynamic> genreIds) {
  StringBuffer buffer = StringBuffer();
  buffer.writeAll(genresToList(genreIds), ", ");
  return buffer.toString();
}
