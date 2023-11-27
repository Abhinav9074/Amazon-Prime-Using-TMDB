import 'package:amazon_prime_clone/screens/details/widgets/description.dart';
import 'package:amazon_prime_clone/screens/details/widgets/movie_card.dart';
import 'package:amazon_prime_clone/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String poster;
  final String description;
  final String name;
  final double rating;
  
  const DetailsScreen({super.key,required this.poster,required this.description, required this.name, required this.rating});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const CustomAppBar(headText: 'Movie', goldColor: false, home: false,back: true,),
      body: SafeArea(
        child: ListView(
        children: [
          MovieCard(poster: poster,name: name,rating: rating,),
          MovieDescription(description: description)
        ],
      )),
    );
  }
}