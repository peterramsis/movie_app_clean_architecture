import 'package:dartz/dartz.dart';
import 'package:movies_clean/core/error/failure.dart';
import 'package:movies_clean/core/usecase/base_movies_use_case.dart';
import 'package:movies_clean/movies/domain/enities/movie_details.dart';
import 'package:movies_clean/movies/domain/repository/base_movie_repository.dart';

class GetMovieDetailsUseCase extends BaseMoviesUseCase<MovieDetail, MovieDetailsParameters>{

  final BaseMovieRepository baseMovieRepository;

  GetMovieDetailsUseCase(this.baseMovieRepository);

  @override
  Future<Either<Failure, MovieDetail>> call(MovieDetailsParameters parameters) async{
    return await baseMovieRepository.getMovieDetail(parameters);
  }


}