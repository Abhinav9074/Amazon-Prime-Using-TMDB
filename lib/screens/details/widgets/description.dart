import 'package:amazon_prime_clone/theme/theme.dart';
import 'package:flutter/material.dart';

class MovieDescription extends StatelessWidget {
  final String description;
  const MovieDescription({super.key,required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Description',style: MyTextStyle.horizontalScrollerTextStyle,),
          const SizedBox(height: 10,),
          Text(description,style: MyTextStyle.descriptionText,),
        ],
      ),
    );
  }
}