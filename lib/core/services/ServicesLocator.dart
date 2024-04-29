import 'package:get_it/get_it.dart';
import 'package:movies_clean/movies/data/datasource/movie_remote_data_sorce.dart';
import 'package:movies_clean/movies/data/repository/movie_repository.dart';
import 'package:movies_clean/movies/domain/repository/base_movie_repository.dart';
import 'package:movies_clean/movies/domain/usecase/get_movie_details_use_case.dart';
import 'package:movies_clean/movies/domain/usecase/get_now_playing_usecase.dart';
import 'package:movies_clean/movies/domain/usecase/get_popular_movies_usecase.dart';
import 'package:movies_clean/movies/domain/usecase/get_top_rated_movies_usecase.dart';
import 'package:movies_clean/movies/presentation/controller/movie_bloc.dart';
import 'package:movies_clean/movies/presentation/controller/movie_details_bloc.dart';

final sl = GetIt.instance;
class ServicesLocator{
  void init(){

    sl.registerLazySingleton(() => MoviesBloc(sl(),sl(),sl()));
    sl.registerLazySingleton(() => MoviesDetailBloc(sl()));

    sl.registerLazySingleton(() => GetTopRatedMovieUseCase(sl()));

    sl.registerLazySingleton(() => GetPopularMovieUseCase(sl()));

    sl.registerLazySingleton(() => GetNowPlayingUseCase(sl()));

    sl.registerLazySingleton(() => GetMovieDetailsUseCase(sl()));

    sl.registerLazySingleton<BaseMovieRepository>(() => MovieRepository(sl()));
    sl.registerLazySingleton<BaseRemoteDataSource>(() => MovieBaseRemoteDataSource());
  }
}