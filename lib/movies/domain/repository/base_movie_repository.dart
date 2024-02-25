import 'package:movies_clean/movies/domain/enities/movie.dart';

abstract class BaseMovieRepository{
  Future<List<Movie>> getNowPlaying();
  Future<List<Movie>> getPopularMovies();
  Future<List<Movie>> getTopRatedMovies();
}