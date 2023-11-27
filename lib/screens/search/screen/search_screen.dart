import 'package:amazon_prime_clone/screens/search/widgets/search_bar.dart';
import 'package:amazon_prime_clone/screens/search/widgets/searched_movies.dart';
import 'package:amazon_prime_clone/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const CustomAppBar(headText: ' Search', goldColor: false, home: false,back: false),
      body: Column(
        children: [
          SearchWidget(),
          const Expanded(child: SearchedList())
        ],
      ),
    );
  }
}