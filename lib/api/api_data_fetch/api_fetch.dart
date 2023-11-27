  import 'package:amazon_prime_clone/api/api_calling/movie_service.dart';
import 'package:amazon_prime_clone/api/api_config/api_config.dart';
import 'package:amazon_prime_clone/screens/splash_screen/splash_screen.dart';

Future<void> fetchAll() async {
    try {
      popularMoviesNotifier.value =
          await MovieService.fetchMovies(ApiConfig.popularMovies);
      nowPlayingMoviesNotifier.value =
          await MovieService.fetchMovies(ApiConfig.trendingMovies);
      popularTvNotifier.value =
          await MovieService.fetchMovies(ApiConfig.trendingtv);
      allTimeFavNotifier.value =
          await MovieService.fetchMovies(ApiConfig.allTimeFavMovie);
      popularMoviesNotifier.notifyListeners();
      nowPlayingMoviesNotifier.notifyListeners();
      popularTvNotifier.notifyListeners();
      allTimeFavNotifier.notifyListeners();
    } catch (e) {
      throw ('Error fetching movies: $e');
    }
  }


Future<void> fetchMovies() async {
    try {
      popularMoviesNotifier.value =
          await MovieService.fetchMovies(ApiConfig.popularMovies);
      nowPlayingMoviesNotifier.value =
          await MovieService.fetchMovies(ApiConfig.trendingMovies);
      popularTvNotifier.value =
          await MovieService.fetchMovies(ApiConfig.allTimeFavMovie);
      allTimeFavNotifier.value =
          await MovieService.fetchMovies(ApiConfig.topratedMovies);
      popularMoviesNotifier.notifyListeners();
      nowPlayingMoviesNotifier.notifyListeners();
      popularTvNotifier.notifyListeners();
      allTimeFavNotifier.notifyListeners();
    } catch (e) {
      throw ('Error fetching movies: $e');
    }
  }


Future<void> fetchTv() async {
    try {
      popularMoviesNotifier.value =
          await MovieService.fetchMovies(ApiConfig.trendingtv);
      nowPlayingMoviesNotifier.value =
          await MovieService.fetchMovies(ApiConfig.discoverTv);
      popularTvNotifier.value =
          await MovieService.fetchMovies(ApiConfig.topRatedTv);
      allTimeFavNotifier.value =
          await MovieService.fetchMovies(ApiConfig.topRatedTv2);
      popularMoviesNotifier.notifyListeners();
      nowPlayingMoviesNotifier.notifyListeners();
      popularTvNotifier.notifyListeners();
      allTimeFavNotifier.notifyListeners();
    } catch (e) {
      throw ('Error fetching movies: $e');
    }
  }