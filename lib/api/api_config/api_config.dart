class ApiConfig{
  static const String apiKey = 'cec27c1b2e722a8b6de7f2134c4ecbdb';
  static const String baseUrl = 'https://api.themoviedb.org/3';
  static const String imagePath = 'https://image.tmdb.org/t/p/w500';
  static const String popularMovies = '/movie/now_playing?language=en-US&page=1&api_key=';
  static const String trendingMovies = '/trending/movie/day?api_key=';
  static const String trendingtv = '/trending/tv/day?api_key=';
  static const String allTimeFavMovie = '/trending/all/week?api_key=';
  static const String discoverTv = '/discover/tv?include_adult=false&include_null_first_air_dates=false&language=en-US&page=1&sort_by=popularity.desc&api_key=';
  static const String topRatedTv = '/tv/top_rated?language=en-US&page=1&api_key=';
  static const String topRatedTv2 = '/tv/top_rated?language=en-US&page=2&api_key=';
  static const String topratedMovies = '/movie/top_rated?language=en-US&page=1&api_key=';
}