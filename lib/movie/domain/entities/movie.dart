class Movie {
  final String img;
  final int id;
  final String original_title;
  final List<int> genreIds;
  final String overview;
  final double voteAverage;

  Movie(
      {required this.img,
      required this.id,
      required this.original_title,
      required this.genreIds,
      required this.overview,
      required this.voteAverage});
}
