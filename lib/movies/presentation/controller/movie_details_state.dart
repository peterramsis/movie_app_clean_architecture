
import 'package:equatable/equatable.dart';
import 'package:movies_clean/core/utils/enum.dart';
import 'package:movies_clean/movies/domain/enities/movie_details.dart';

class MovieDetailsState extends Equatable {

  final MovieDetail? movieDetail;
  final String movieDetailsMessage;
  final RequestState movieDetailsState;

  const MovieDetailsState({
    this.movieDetail,
    this.movieDetailsMessage = '',
    this.movieDetailsState = RequestState.loading
  });


  MovieDetailsState copyWith({
    MovieDetail? movieDetail,
    RequestState? movieDetailsState,
    String? movieDetailsMessage,

  }) {
    return MovieDetailsState(
      movieDetail: movieDetail ?? this.movieDetail,
      movieDetailsState: movieDetailsState ?? this.movieDetailsState,
      movieDetailsMessage: movieDetailsMessage ?? this.movieDetailsMessage,

    );
  }

  @override
  List<Object?> get props => [movieDetail, movieDetailsMessage, movieDetailsState];
}

