import 'package:dartz/dartz.dart';
import 'package:movies_app/core/core/error/failure.dart';
import 'package:movies_app/movie/domain/entities/movie.dart';

abstract class BaseMovieRepository {
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies();
  Future<Either<Failure, List<Movie>>> getPopularMovies();
  Future<Either<Failure, List<Movie>>> getTopRatedMovies();
}
