import 'package:dartz/dartz.dart';
import 'package:movies_clean/core/error/failure.dart';
import 'package:movies_clean/movies/domain/enities/movie.dart';
import 'package:movies_clean/movies/domain/repository/base_movie_repository.dart';

class GetNowPlayingUseCase{
  final BaseMovieRepository baseMovieRepository;
  GetNowPlayingUseCase(this.baseMovieRepository);


  Future<Either<Failure, List<Movie>>> call() async{
      return await baseMovieRepository.getNowPlaying();
  }
}