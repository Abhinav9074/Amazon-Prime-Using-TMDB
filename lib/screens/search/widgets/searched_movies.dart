import 'package:amazon_prime_clone/api/api_calling/search_api.dart';
import 'package:amazon_prime_clone/api/api_config/api_config.dart';
import 'package:amazon_prime_clone/models/movie_model.dart';
import 'package:amazon_prime_clone/screens/details/screen/details_screen.dart';
import 'package:flutter/material.dart';

class SearchedList extends StatelessWidget {
  const SearchedList({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: searchResultsNotifier,
      builder: (BuildContext ctx, List<ApiDataModel> newList, _) {
        return ListView.separated(
            itemBuilder: (context,index){
              final data = newList[index];
              return Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                      return DetailsScreen(poster: '${ApiConfig.imagePath}${data.poster}', description: data.overview!, name: data.movieName!, rating: data.averageRating!);
                    }));
                  },
                  child: SizedBox(
                    width: double.infinity,
                    height: 100,
                    child: Row(
                      children: [
                        Container(
                          height: double.infinity,
                          width: 80,
                          decoration: BoxDecoration(
                            image: DecorationImage(image:  NetworkImage('${ApiConfig.imagePath}${data.poster}'),fit: BoxFit.fill)
                          ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                                child: SizedBox(
                                  width: 300,
                                  child: Text(data.movieName!)),
                              )
                            ],
                          )
                      ],
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (context,index){
              return const SizedBox(height: 30,);
            },
            itemCount: newList.length);
      },
    );
  }
}
