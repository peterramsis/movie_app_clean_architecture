import 'package:dartz/dartz.dart';
import 'package:movies_clean/core/error/failure.dart';
import 'package:movies_clean/movies/domain/enities/movie.dart';

abstract class BaseMovieRepository{
  Future<Either<ServerFailure , List<Movie>>> getNowPlaying();
  Future<Either<ServerFailure , List<Movie>>> getPopularMovies();
  Future<Either<ServerFailure , List<Movie>>> getTopRatedMovies();
}