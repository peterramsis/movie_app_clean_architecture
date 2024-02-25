import 'package:movies_clean/movies/domain/enities/movie.dart';
import 'package:movies_clean/movies/domain/repository/base_movie_repository.dart';

class GetPopularMovieUseCase{
  final BaseMovieRepository baseMovieRepository;
  GetPopularMovieUseCase(this.baseMovieRepository);


  Future<List<Movie>> execute() async{
    return await baseMovieRepository.getPopularMovies();
  }
}