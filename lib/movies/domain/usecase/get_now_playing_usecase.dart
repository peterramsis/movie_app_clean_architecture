import 'package:movies_clean/movies/domain/enities/movie.dart';
import 'package:movies_clean/movies/domain/repository/base_movie_repository.dart';

class GetNowPlayingUseCase{
  final BaseMovieRepository baseMovieRepository;
  GetNowPlayingUseCase(this.baseMovieRepository);


  Future<List<Movie>> execute() async{
      return await baseMovieRepository.getNowPlaying();
  }
}