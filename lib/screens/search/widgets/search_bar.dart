// ignore_for_file: must_be_immutable

import 'package:amazon_prime_clone/api/api_calling/search_api.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  SearchWidget({super.key});
  TextEditingController searchcont = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        controller: searchcont,
        onChanged: (value)async{
           searchData(value);
        },
        decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            labelText: 'Search Movies , Tv Shows and More',
            prefixIcon: const Icon(Icons.search),
            suffixIcon:
                IconButton(onPressed: () async{
                  await refreshUi();
                  searchcont.clear();
                }, icon: const Icon(Icons.close))),
      ),
    );
  }
}
