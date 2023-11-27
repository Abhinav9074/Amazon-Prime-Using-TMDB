class ApiDataModel {
  final int? id;
  final String? movieName;
  final String? backdrop;
  final String? poster;
  final double? averageRating;
  final String? overview;

  ApiDataModel(
      {required this.id,
      required this.movieName,
      required this.backdrop,
      required this.poster,
      required this.averageRating,
      required this.overview});

  factory ApiDataModel.fromJson(Map<String, dynamic> json) {
    String fname = json['name'] ?? json['title'];
    return ApiDataModel(
        id: json['id']as int,
        movieName: fname,
        backdrop: json['backdrop_path'],
        poster: json['poster_path'],
        averageRating: json['vote_average']==null?0.toDouble():json['vote_average'].toDouble(),
        overview: json['overview']);
  }
}
