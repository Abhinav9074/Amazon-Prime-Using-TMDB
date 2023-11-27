import 'dart:async';
import 'package:amazon_prime_clone/api/api_calling/movie_service.dart';
import 'package:amazon_prime_clone/api/api_config/api_config.dart';
import 'package:amazon_prime_clone/api/api_data_fetch/api_fetch.dart';
import 'package:amazon_prime_clone/models/movie_model.dart';
import 'package:amazon_prime_clone/screens/main_page/screens/main_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

ValueNotifier<List<ApiDataModel>> popularMoviesNotifier = ValueNotifier([]);
ValueNotifier<List<ApiDataModel>> nowPlayingMoviesNotifier = ValueNotifier([]);
ValueNotifier<List<ApiDataModel>> popularTvNotifier = ValueNotifier([]);
ValueNotifier<List<ApiDataModel>> allTimeFavNotifier = ValueNotifier([]);

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 1), () async {
      await fetchAll();
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) {
        return const MainPage();
      }));
    });

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/splash.png',
          width: 150,
        ),
      ),
    );
  }
}
