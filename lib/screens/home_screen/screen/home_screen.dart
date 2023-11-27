import 'package:amazon_prime_clone/models/movie_model.dart';
import 'package:amazon_prime_clone/screens/splash_screen/splash_screen.dart';
import 'package:amazon_prime_clone/widgets/app_bar.dart';
import 'package:amazon_prime_clone/screens/home_screen/widgets/carousel.dart';
import 'package:amazon_prime_clone/screens/home_screen/widgets/horizontal_scroll.dart';
import 'package:amazon_prime_clone/screens/home_screen/widgets/portrait_scroll.dart';
import 'package:amazon_prime_clone/screens/home_screen/widgets/type_select_choice_chips.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {

    const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  const CustomAppBar(headText: 'Home', goldColor: false, home: true,back: false),
      body: SafeArea(
        child: ListView(
          children:  [
            const TypeSelector(),
            CarouselHomeScreen(),
            ValueListenableBuilder(valueListenable: nowPlayingMoviesNotifier, builder: (BuildContext ctx, List<ApiDataModel> newList, _){
              return HorizontalScrollingWidget(scrollList: newList, headText: 'Now Playing');
            }),
            ValueListenableBuilder(valueListenable: popularMoviesNotifier, builder: (BuildContext ctx, List<ApiDataModel> newList, _){
              return HorizontalScrollingWidget(scrollList: newList, headText: 'Popular');
            }),
            ValueListenableBuilder(valueListenable: popularTvNotifier, builder: (BuildContext ctx, List<ApiDataModel> newList, _){
              return PortraitScrollWidget(scrollList: newList, headText: 'Amazon Original');
            }),
            ValueListenableBuilder(valueListenable: allTimeFavNotifier, builder: (BuildContext ctx, List<ApiDataModel> newList, _){
              return PortraitScrollWidget(scrollList: newList, headText: 'All Time Favouriate');
            }),
          ],
        )
        ),        
    );
  }
}
