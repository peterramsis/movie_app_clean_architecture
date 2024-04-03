import 'package:get_it/get_it.dart';
import 'package:movies_clean/movies/data/datasource/movie_remote_data_sorce.dart';
import 'package:movies_clean/movies/data/repository/movie_repository.dart';
import 'package:movies_clean/movies/domain/repository/base_movie_repository.dart';
import 'package:movies_clean/movies/domain/usecase/get_now_playing_usecase.dart';

final sl = GetIt.instance;
class ServicesLocator{
  void init(){
    sl.registerLazySingleton(() => GetNowPlayingUseCase(sl()));
    sl.registerLazySingleton<BaseMovieRepository>(() => MovieRepository(sl()));
    sl.registerLazySingleton<BaseRemoteDataSource>(() => MovieBaseRemoteDataSource());
  }
}