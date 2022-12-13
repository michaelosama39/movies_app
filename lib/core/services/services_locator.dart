import 'package:get_it/get_it.dart';
import 'package:movies_app/movie/data/datasource/movie_remote_datasource.dart';
import 'package:movies_app/movie/data/repository/movie_repository.dart';
import 'package:movies_app/movie/domain/repository/base_movie_repository.dart';
import 'package:movies_app/movie/domain/usecases/get_now_playing_movies.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    sl.registerLazySingleton(() => GetNowPlayingMovies(sl()));

    sl.registerLazySingleton<BaseMovieRepository>(() => MovieRepository(sl()));

    sl.registerLazySingleton<BaseMovieRemoteDatasource>(
        () => MovieRemoteDatasource());
  }
}
