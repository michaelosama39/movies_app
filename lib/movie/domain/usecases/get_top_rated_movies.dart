import 'package:dartz/dartz.dart';
import 'package:movies_app/core/core/error/failure.dart';
import 'package:movies_app/movie/domain/entities/movie.dart';
import 'package:movies_app/movie/domain/repository/base_movie_repository.dart';

class GetTopRatedMovies {
  final BaseMovieRepository repository;

  GetTopRatedMovies(this.repository);

  Future<Either<Failure, List<Movie>>> execute() async {
    return await repository.getTopRatedMovies();
  }
}
