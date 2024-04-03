import 'package:equatable/equatable.dart';

abstract class MovieEvent extends Equatable{
  List<Object?> get props => [];
}

class GetNowPlayingMoviesEvent extends MovieEvent{}
class GetPopularMoviesEvent extends MovieEvent{}
class GetTopRatedMoviesEvent extends MovieEvent{}