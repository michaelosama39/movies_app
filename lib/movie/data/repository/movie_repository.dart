import 'package:dartz/dartz.dart';
import 'package:movies_app/core/core/error/exception.dart';
import 'package:movies_app/core/core/error/failure.dart';
import 'package:movies_app/movie/data/datasource/movie_remote_datasource.dart';
import 'package:movies_app/movie/domain/entities/movie.dart';
import 'package:movies_app/movie/domain/repository/base_movie_repository.dart';

class MovieRepository extends BaseMovieRepository {
  final BaseMovieRemoteDatasource baseMovieRemoteDatasource;

  MovieRepository(this.baseMovieRemoteDatasource);

  @override
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies() async {
    final result = await baseMovieRemoteDatasource.getNowPlayingMovies();
    try {
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getPopularMovies() async {
    final result = await baseMovieRemoteDatasource.getPopularMovies();
    try {
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRatedMovies() async {
    final result = await baseMovieRemoteDatasource.getTopRatedMovies();
    try {
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.errorMessageModel.statusMessage));
    }
  }
}
