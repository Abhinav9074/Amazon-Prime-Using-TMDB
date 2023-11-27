import 'package:flutter/material.dart';

class NameAndRating extends StatelessWidget {
  final String name;
  final double rating;
  const NameAndRating({super.key,required this.name,required this.rating});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 70,
          height: 25,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(100)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.star),
              Text('$rating',style: const TextStyle(color: Colors.black,fontFamily: 'Montserrat-Medium'),textAlign: TextAlign.center,textScaleFactor: 1,),
            ],
          ),
        ),
        const SizedBox(height: 20,),
        SizedBox(
          width: 200,
          child: Text(name,textScaleFactor: 1,style: const TextStyle(fontFamily: 'Montserrat-Medium',fontSize: 20),))
      ],
    );
  }
}