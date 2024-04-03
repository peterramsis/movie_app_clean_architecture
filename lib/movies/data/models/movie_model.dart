import 'package:movies_clean/movies/domain/enities/movie.dart';

class MovieModel extends Movie {
  const MovieModel(
      {required super.id,
      required super.genreIds,
      required super.title,
      required super.originalTitle,
      required super.voteAverage,
      required super.backdropPath,
      required super.releaseDate,
      required super.overview});

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
        id              : json["id"],
        title           : json["title"],
        originalTitle   : json["original_title"],
        genreIds:       List<int>.from(json["genre_ids"].map((e) => e)),
        voteAverage:    json["vote_average"],
        backdropPath:   json["backdrop_path"],
        overview:       json["overview"],
        releaseDate:    json["release_date"],
      );
}
