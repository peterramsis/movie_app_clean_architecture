import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_clean/core/usecase/base_movies_use_case.dart';
import 'package:movies_clean/core/utils/enum.dart';
import 'package:movies_clean/movies/domain/usecase/get_movie_details_use_case.dart';
import 'package:movies_clean/movies/presentation/controller/movie_details_event.dart';
import 'package:movies_clean/movies/presentation/controller/movie_details_state.dart';

class MoviesDetailBloc extends Bloc<MovieDetailsEvent , MovieDetailsState>{

  final GetMovieDetailsUseCase getMovieDetailsUseCase;
  MoviesDetailBloc(this.getMovieDetailsUseCase) :super(const MovieDetailsState()){
   on<GetMovieDetailsEvent>(_getMovieDetails);
  }


  FutureOr<void> _getMovieDetails(GetMovieDetailsEvent event, Emitter<MovieDetailsState> emit) async {
   final result = await getMovieDetailsUseCase(MovieDetailsParameters(id: event.id));

   result.fold((l) => emit(
       state.copyWith(
       movieDetailsState: RequestState.error,
         movieDetailsMessage: l.message
       )
   ), (r) => emit(
       state.copyWith(
         movieDetail: r,movieDetailsState: RequestState.loaded
       )
   ));

  }
}