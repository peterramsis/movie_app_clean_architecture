import 'package:dartz/dartz.dart';
import 'package:movies_clean/core/error/failure.dart';
import 'package:movies_clean/movies/domain/enities/movie.dart';
import 'package:movies_clean/movies/domain/repository/base_movie_repository.dart';

class GetTopRatedMovieUseCase{
  final BaseMovieRepository baseMovieRepository;
  GetTopRatedMovieUseCase(this.baseMovieRepository);


  Future<Either<ServerFailure, List<Movie>>> execute() async{
    return await baseMovieRepository.getTopRatedMovies();
  }
}