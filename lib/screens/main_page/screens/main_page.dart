import 'package:amazon_prime_clone/screens/downloads/screen/screen_downloads.dart';
import 'package:amazon_prime_clone/screens/home_screen/screen/home_screen.dart';
import 'package:amazon_prime_clone/screens/live_tv/live_tv_screen.dart';
import 'package:amazon_prime_clone/widgets/bottom_navigation_bar.dart';
import 'package:amazon_prime_clone/screens/search/screen/search_screen.dart';
import 'package:amazon_prime_clone/screens/store/screen_store.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {

  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pages = [
      const HomeScreen(),
       const StoreScreen(),
      const LiveTvScreen(),
      const DownloadsScreen(),
      // ignore: prefer_const_constructors
      SearchScreen()
    ];
    return ValueListenableBuilder(
      valueListenable: screenChangeNotifier,
      builder: (context, int index, _) {
        return Scaffold(
          body: pages[index],
          bottomNavigationBar: const BottomNavigationDrawer(),
        );
      },
    );
  }
}
