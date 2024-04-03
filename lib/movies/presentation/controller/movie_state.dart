import 'package:equatable/equatable.dart';
import 'package:movies_clean/core/utils/enum.dart';
import 'package:movies_clean/movies/domain/enities/movie.dart';

class MovieState extends Equatable{

  final List<Movie> nowPlayingMovies;
  final String message;
  final RequestState nowPlayingState;

  const MovieState({
    this.nowPlayingMovies = const [] , this.message = "" ,this.nowPlayingState = RequestState.loading
  });

  @override
  List<Object?> get props => [nowPlayingMovies,message , nowPlayingState];

}