import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/core/utils/enums.dart';
import 'package:movies_app/movie/domain/entities/movie.dart';
import 'package:movies_app/movie/domain/usecases/get_now_playing_movies.dart';

part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final GetNowPlayingMovies getNowPlayingMovies;

  MoviesBloc(this.getNowPlayingMovies) : super(MoviesState()) {
    on<GetNowPlayingMoviesEvent>((event, emit) async {
      final result = await getNowPlayingMovies.execute();
      emit(MoviesState(nowPlaying: RequestState.loaded));
      result.fold(
          (l) => emit(MoviesState(
                message: l.message,
                nowPlaying: RequestState.error,
              )),
          (r) => emit(MoviesState(
                nowPlaying: RequestState.loaded,
                nowPlayingMovies: r,
              )));
    });
  }
}
