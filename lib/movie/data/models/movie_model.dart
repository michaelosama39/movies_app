import 'package:movies_app/movie/domain/entities/movie.dart';

class MovieModel extends Movie {
  MovieModel(
      {required String img,
      required int id,
      required String original_title,
      required List<int> genreIds,
      required String overview,
      required double voteAverage})
      : super(
            img: img,
            id: id,
            original_title: original_title,
            genreIds: genreIds,
            overview: overview,
            voteAverage: voteAverage);

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
        id: json['id'],
        original_title: json['title'],
        img: json['backdrop_path'],
        genreIds: List<int>.from(json['genre_ids'].map((e) => e)),
        overview: json['overview'],
        voteAverage: json['vote_average'].toDouble(),
      );
}
