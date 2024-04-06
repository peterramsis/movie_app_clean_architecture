import 'package:dartz/dartz.dart';
import 'package:movies_clean/core/error/failure.dart';

abstract class BaseMoviesUseCase<T>{
  Future<Either<Failure, T>> call();
}