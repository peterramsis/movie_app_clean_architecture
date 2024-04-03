import 'package:dartz/dartz.dart';
import 'package:movies_clean/core/error/excepations.dart';
import 'package:movies_clean/core/error/failure.dart';

import 'package:movies_clean/movies/data/datasource/movie_remote_data_sorce.dart';
import 'package:movies_clean/movies/domain/enities/movie.dart';
import 'package:movies_clean/movies/domain/repository/base_movie_repository.dart';

class MovieRepository extends BaseMovieRepository{
  final BaseRemoteDataSource baseRemoteDataSource;

  MovieRepository(this.baseRemoteDataSource);

  @override
  Future<Either<Failure, List<Movie>>> getNowPlaying() async{
    final result = await baseRemoteDataSource.getNowPlayingMovies();

    try{
      return Right(result);
    }on ServerException catch (failure){
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getPopularMovies() async{
    final result = await baseRemoteDataSource.getPopularMovies();

    try{
      return Right(result);
    }on ServerException catch (failure){
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRatedMovies() async{
    final result = await baseRemoteDataSource.getTopRatedMovies();

    try{
      return Right(result);
    }on ServerException catch (failure){
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }



}