import 'package:dartz/dartz.dart';
import 'package:movies_clean/core/error/failure.dart';
import 'package:movies_clean/movies/domain/enities/movie.dart';

abstract class BaseMovieRepository{
  Future<Either<Failure , List<Movie>>> getNowPlaying();
  Future<Either<Failure , List<Movie>>> getPopularMovies();
  Future<Either<Failure , List<Movie>>> getTopRatedMovies();
}