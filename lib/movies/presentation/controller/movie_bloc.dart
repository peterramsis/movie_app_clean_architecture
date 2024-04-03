import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_clean/core/utils/enum.dart';
import 'package:movies_clean/movies/data/datasource/movie_remote_data_sorce.dart';
import 'package:movies_clean/movies/data/repository/movie_repository.dart';
import 'package:movies_clean/movies/domain/repository/base_movie_repository.dart';
import 'package:movies_clean/movies/domain/usecase/get_now_playing_usecase.dart';
import 'package:movies_clean/movies/presentation/controller/movie_event.dart';
import 'package:movies_clean/movies/presentation/controller/movie_state.dart';

class MoviesBloc extends Bloc<MovieEvent , MovieState>{
  MoviesBloc() : super(const MovieState()){
    on<GetNowPlayingMoviesEvent>((event, emit) async{
        BaseRemoteDataSource baseRemoteDataSource = MovieBaseRemoteDataSource();
        BaseMovieRepository baseMovieRepository = MovieRepository(baseRemoteDataSource);
       final result = await GetNowPlayingUseCase(baseMovieRepository).execute();

      result.fold((l) => emit(
          MovieState(
            message: l.message,
            nowPlayingState: RequestState.error,

          )
      ), (r) => emit(
          MovieState(
            nowPlayingState: RequestState.loaded,
            nowPlayingMovies: r,

          )
      ));
    });
  }

}