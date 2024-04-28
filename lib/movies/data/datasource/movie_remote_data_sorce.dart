import 'package:dio/dio.dart';
import 'package:movies_clean/core/error/excepations.dart';
import 'package:movies_clean/core/network/error_network_model.dart';
import 'package:movies_clean/core/usecase/base_movies_use_case.dart';
import 'package:movies_clean/core/utils/app_constance.dart';
import 'package:movies_clean/movies/data/models/movie_details.dart';
import 'package:movies_clean/movies/data/models/movie_model.dart';

abstract class BaseRemoteDataSource{
  Future<List<MovieModel>> getNowPlayingMovies();
  Future<List<MovieModel>> getPopularMovies();
  Future<List<MovieModel>> getTopRatedMovies();
  Future<MovieDetailsModel> getMovieDetails(MovieDetailsParameters parameters);
}

class MovieBaseRemoteDataSource extends BaseRemoteDataSource{

  @override
  Future<List<MovieModel>> getNowPlayingMovies() async
  {

    final response = await Dio().get(AppConstance.getPlayingMovie);


    if(response.statusCode == 200)
    {
        return List<MovieModel>.from((response.data["results"] as List).map((element) => MovieModel.fromJson(element))) ;
    }else{
        throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data)
        );
    }
  }

  @override
  Future<List<MovieModel>> getPopularMovies() async{

    final response = await Dio().get(AppConstance.getPopularMovie);
    if(response.statusCode == 200)
    {
      return List<MovieModel>.from((response.data["results"] as List).map((element) => MovieModel.fromJson(element))) ;
    }else{
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data)
      );
    }
  }

  @override
  Future<List<MovieModel>> getTopRatedMovies() async{
    final response = await Dio().get(AppConstance.getTopRatedMovie);
    if(response.statusCode == 200)
    {
      return List<MovieModel>.from((response.data["results"] as List).map((element) => MovieModel.fromJson(element))) ;
    }else{
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data)
      );
    }
  }
  @override
  Future<MovieDetailsModel> getMovieDetails(MovieDetailsParameters parameters) async{
    final response = await Dio().get(AppConstance.getMovieDetails(parameters.id));
    if(response.statusCode == 200)
    {
      return MovieDetailsModel.fromJson(response.data);
    }else{
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data)
      );
    }
  }

}