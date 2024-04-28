import 'package:dartz/dartz.dart';
import 'package:movies_clean/core/error/failure.dart';
import 'package:movies_clean/core/usecase/base_movies_use_case.dart';
import 'package:movies_clean/movies/domain/enities/movie.dart';
import 'package:movies_clean/movies/domain/repository/base_movie_repository.dart';

class GetNowPlayingUseCase extends BaseMoviesUseCase<List<Movie> , NoParameters>{
  final BaseMovieRepository baseMovieRepository;
  GetNowPlayingUseCase(this.baseMovieRepository);

  @override
  @override
  Future<Either<Failure, List<Movie>>> call(NoParameters noParameters) async{
    return await baseMovieRepository.getNowPlaying();
  }



}