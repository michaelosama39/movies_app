import 'package:dio/dio.dart';
import 'package:movies_app/core/core/error/exception.dart';
import 'package:movies_app/core/network/error_message_model.dart';
import 'package:movies_app/core/utils/constances.dart';
import 'package:movies_app/movie/data/models/movie_model.dart';

abstract class BaseMovieRemoteDatasource {
  Future<List<MovieModel>> getNowPlayingMovies();
  Future<List<MovieModel>> getPopularMovies();
  Future<List<MovieModel>> getTopRatedMovies();
}

class MovieRemoteDatasource extends BaseMovieRemoteDatasource {
  @override
  Future<List<MovieModel>> getNowPlayingMovies() async {
    var response = await Dio().get(
        "${AppConstance.baseUrl}movie/now_playing?api_key=${AppConstance.api_key}");
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List)
          .map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<List<MovieModel>> getPopularMovies() async {
    var response = await Dio().get(
        "${AppConstance.baseUrl}movie/popular?api_key=${AppConstance.api_key}");
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List)
          .map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<List<MovieModel>> getTopRatedMovies() async {
    var response = await Dio().get(
        "${AppConstance.baseUrl}movie/top_rated?api_key=${AppConstance.api_key}");
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List)
          .map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }
}
