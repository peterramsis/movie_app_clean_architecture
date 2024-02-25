import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final int id;
  final List<int> genreIds;
  final String title;
  final String originalTitle;
  final double voteAverage;
  final String releaseDate;
  final String backdropPath;
  final String overview;


  const Movie({required this.id,
    required this.genreIds,
    required this.title,
    required this.originalTitle,
    required this.voteAverage,
    required this.backdropPath,
    required this.releaseDate,
    required this.overview});


  @override
  List<Object> get props =>
      [
        id,
        genreIds,
        title,
        originalTitle,
        voteAverage,
        backdropPath,
        overview,
        releaseDate
      ];

}