import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_clean/core/utils/enum.dart';

import 'package:movies_clean/movies/domain/usecase/get_now_playing_usecase.dart';
import 'package:movies_clean/movies/domain/usecase/get_popular_movies_usecase.dart';
import 'package:movies_clean/movies/domain/usecase/get_top_rated_movies_usecase.dart';
import 'package:movies_clean/movies/presentation/controller/movie_event.dart';
import 'package:movies_clean/movies/presentation/controller/movie_state.dart';

class MoviesBloc extends Bloc<MovieEvent , MovieState>{

  final GetNowPlayingUseCase getNowPlayingUseCase;
  final GetPopularMovieUseCase getPopularMovieUseCase;
  final GetTopRatedMovieUseCase getTopRatedMovieUseCase;

  MoviesBloc(this.getNowPlayingUseCase , this.getPopularMovieUseCase ,this.getTopRatedMovieUseCase) : super(const MovieState()){
    on<GetNowPlayingMoviesEvent>((event, emit) async{

       final result = await getNowPlayingUseCase();

      result.fold((l) => emit(
          state.copyWith(
            message: l.message,
            nowPlayingState: RequestState.error,
          )
      ), (r) => emit(
          state.copyWith(
            nowPlayingState: RequestState.loaded,
            nowPlayingMovies: r,
          )
      ));
    });


    on<GetPopularMoviesEvent>((event, emit) async{
          final result = await getPopularMovieUseCase();

          result.fold((l) => emit(
              state.copyWith(
                  messagePopular: l.message,
                  popularState:  RequestState.error
              )
          ), (r) =>
            emit(
               state.copyWith(
                   popularState: RequestState.loaded,
                   popularMovies: r
               )
            )
          );
    });


    on<GetTopRatedMoviesEvent>((event, emit) async{
      final result = await getTopRatedMovieUseCase();

      result.fold((l) => emit(
          state.copyWith(
              topRatedMessage: l.message,
              topRatedState:  RequestState.error
          )
      ), (r) =>
          emit(
              state.copyWith(
                  topRatedState: RequestState.loaded,
                  topRatedMovies: r
              )
          )
      );
    });
  }

}