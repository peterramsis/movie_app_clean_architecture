import 'package:dartz/dartz.dart';
import 'package:movies_clean/core/error/failure.dart';
import 'package:movies_clean/core/usecase/base_movies_use_case.dart';
import 'package:movies_clean/movies/domain/enities/movie.dart';
import 'package:movies_clean/movies/domain/enities/movie_details.dart';

abstract class BaseMovieRepository{
  Future<Either<Failure , List<Movie>>> getNowPlaying();
  Future<Either<Failure , List<Movie>>> getPopularMovies();
  Future<Either<Failure , List<Movie>>> getTopRatedMovies();
  Future<Either<Failure, MovieDetail>> getMovieDetail(MovieDetailsParameters parameters);

}