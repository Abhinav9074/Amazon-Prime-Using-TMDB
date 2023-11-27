// ignore_for_file: must_be_immutable

import 'package:amazon_prime_clone/models/movie_model.dart';
import 'package:amazon_prime_clone/screens/home_screen/widgets/horizontal_scroll.dart';
import 'package:amazon_prime_clone/screens/home_screen/widgets/portrait_scroll.dart';
import 'package:amazon_prime_clone/screens/splash_screen/splash_screen.dart';
import 'package:amazon_prime_clone/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {

  const StoreScreen(
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(headText: ' Store', goldColor: true, home: false,back: false,),
      body: SafeArea(
          child: ListView(
        children: [
       ValueListenableBuilder(valueListenable: nowPlayingMoviesNotifier, builder: (BuildContext ctx, List<ApiDataModel> newList, _){
              return HorizontalScrollingWidget(scrollList: newList, headText: 'Rent Movies');
            }),
          ValueListenableBuilder(valueListenable: popularMoviesNotifier, builder: (BuildContext ctx, List<ApiDataModel> newList, _){
              return PortraitScrollWidget(scrollList: newList, headText: 'Popular Movies');
            }),
            ValueListenableBuilder(valueListenable: popularTvNotifier, builder: (BuildContext ctx, List<ApiDataModel> newList, _){
              return PortraitScrollWidget(scrollList: newList, headText: 'PopularTV Shows');
            }),
        ],
      )),
    );
  }
}
