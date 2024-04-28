
import 'package:movies_clean/movies/domain/enities/movie_details.dart';

class MovieDetailsModel extends MovieDetail{

  const MovieDetailsModel({required super.id, required super.overview, required super.title, required super.runtime, required super.voteAverage, required super.releaseDate, required super.backdropPath, required super.genres});

  factory MovieDetailsModel.fromJson(Map<String , dynamic> json) =>
      MovieDetailsModel(
          id: json["id"],
          overview: json["overview"],
          title: json["title"],
          runtime:  json["runtime"],
          voteAverage: json["vote_average"],
          releaseDate: json["release_date"],
          backdropPath: json["backdrop_path"],
          genres: []
      );
}
