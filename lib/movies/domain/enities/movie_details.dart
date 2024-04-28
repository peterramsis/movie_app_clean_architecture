import 'package:equatable/equatable.dart';
import 'package:movies_clean/movies/domain/enities/genres.dart';

class MovieDetail extends Equatable{
  final int id;
  final String overview;
  final String title;
  final int runtime;
  final double voteAverage;
  final String releaseDate;
  final String backdropPath;
  final List<Genres> genres;



  const MovieDetail({
    required this.id,
    required this.overview,
    required this.title,
    required this.runtime,
    required this.voteAverage,
    required this.releaseDate,
    required this.backdropPath,
    required this.genres
  });

  @override
  List<Object?> get props => [id, overview, title, runtime , voteAverage , releaseDate, backdropPath ,genres];

}