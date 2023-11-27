import 'package:amazon_prime_clone/media_query/media_query.dart';
import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CarouselHomeScreen extends StatelessWidget {

   CarouselHomeScreen({super.key});

  List<BannerModel> listBanners = [
  BannerModel(imagePath: 'assets/images/banner1.png', id: '1'),
  BannerModel(imagePath: 'assets/images/banner2.png', id: '2'),
  BannerModel(imagePath: 'assets/images/banner3.png', id: '3'),
  BannerModel(imagePath: 'assets/images/banner4.png', id: '4'),
];


  @override
  Widget build(BuildContext context) {
    return BannerCarousel.fullScreen(
      banners: listBanners,
      height: carouselHeight(context),
      animation: true,
      onTap: (id) => print(id),
      );
  }
}

