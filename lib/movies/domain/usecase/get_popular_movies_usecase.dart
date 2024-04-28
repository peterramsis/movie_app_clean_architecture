import 'package:dartz/dartz.dart';
import 'package:movies_clean/core/error/failure.dart';
import 'package:movies_clean/core/usecase/base_movies_use_case.dart';
import 'package:movies_clean/movies/domain/enities/movie.dart';
import 'package:movies_clean/movies/domain/repository/base_movie_repository.dart';

class GetPopularMovieUseCase extends BaseMoviesUseCase<List<Movie> , NoParameters>{
  final BaseMovieRepository baseMovieRepository;
  GetPopularMovieUseCase(this.baseMovieRepository);


  @override
  Future<Either<Failure, List<Movie>>> call(NoParameters noParameters) async{
    return await baseMovieRepository.getPopularMovies();
  }
}