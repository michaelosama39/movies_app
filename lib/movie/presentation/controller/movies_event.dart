part of 'movies_bloc.dart';

@immutable
abstract class MoviesEvent {}

class GetNowPlayingMoviesEvent extends MoviesEvent {}

class GetPopularMoviesEvent extends MoviesEvent {}

class GetTopRatedMoviesEvent extends MoviesEvent {}
