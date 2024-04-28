import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_clean/core/error/failure.dart';

abstract class BaseMoviesUseCase<T , Parameters>{
  Future<Either<Failure, T>> call(Parameters parameters);
}

class NoParameters extends Equatable{
  const NoParameters();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class MovieDetailsParameters extends Equatable{
  final int id;
  const MovieDetailsParameters({ required this.id});
  @override
  List<Object?> get props => [id];

}