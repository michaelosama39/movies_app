part of 'movies_bloc.dart';

class MoviesState {
  final List<Movie> nowPlayingMovies;
  final RequestState nowPlaying;
  final String message;

  MoviesState({
    this.nowPlayingMovies = const [],
    this.nowPlaying = RequestState.loading,
    this.message = '',
  });
}
