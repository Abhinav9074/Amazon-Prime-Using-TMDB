import 'package:amazon_prime_clone/media_query/media_query.dart';
import 'package:amazon_prime_clone/screens/details/widgets/movie_name_rating.dart';
import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final String poster;
  final String name;
  final double rating;
  const MovieCard({super.key,required this.poster,required this.name,required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(poster),fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(10)
            ),
            width: movieCardWidth(context),
            height: movieCardHeight(context),
          ),
        ),
        NameAndRating(name: name,rating: rating,)
      ],
    );
  }
}