import 'package:equatable/equatable.dart';
import 'package:movies_clean/core/utils/enum.dart';
import 'package:movies_clean/movies/domain/enities/movie.dart';

class MovieState extends Equatable{

  final List<Movie> nowPlayingMovies;
  final String message;
  final RequestState nowPlayingState;

  //popular
  final List<Movie> popularMovies;
  final String messagePopular;
  final RequestState popularState;

  //top Rated
  final List<Movie> topRatedMovies;
  final String topRatedMessage;
  final RequestState topRatedState;

  MovieState copyWith({
    List<Movie>? nowPlayingMovies,
    String? message,
    RequestState? nowPlayingState,

    //popular
    List<Movie>? popularMovies,
    String? messagePopular,
    RequestState? popularState,

    List<Movie>? topRatedMovies,
    String? topRatedMessage,
    RequestState? topRatedState,

  }) {
    return MovieState(
      nowPlayingMovies: nowPlayingMovies ?? this.nowPlayingMovies,
      message: message ?? this.message,
      nowPlayingState: nowPlayingState ?? this.nowPlayingState,

      //popular
      popularMovies: popularMovies ?? this.popularMovies,
      messagePopular: messagePopular ?? this.messagePopular,
      popularState: popularState ?? this.popularState,


      topRatedMessage: topRatedMessage ?? this.topRatedMessage,
      topRatedMovies: topRatedMovies ?? this.topRatedMovies,
      topRatedState: topRatedState ?? this.topRatedState
    );
  }


  const MovieState({
    this.nowPlayingMovies = const [] ,
    this.message = "" ,
    this.nowPlayingState = RequestState.loading,

    this.popularMovies = const [],
    this.messagePopular = "",
    this.popularState = RequestState.loading,

    this.topRatedMessage = "",
    this.topRatedMovies = const [],
    this.topRatedState = RequestState.loading
  });

  @override
  List<Object?> get props => [
    nowPlayingMovies,
    message ,
    nowPlayingState ,

    popularMovies,
    messagePopular,
    popularState,

    topRatedMessage,
    topRatedMovies ,
    topRatedState,
  ];

}