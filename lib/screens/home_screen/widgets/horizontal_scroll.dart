import 'package:amazon_prime_clone/api/api_config/api_config.dart';
import 'package:amazon_prime_clone/media_query/media_query.dart';
import 'package:amazon_prime_clone/models/movie_model.dart';
import 'package:amazon_prime_clone/screens/details/screen/details_screen.dart';
import 'package:amazon_prime_clone/theme/theme.dart';
import 'package:flutter/material.dart';

class HorizontalScrollingWidget extends StatelessWidget {
  final List<ApiDataModel> scrollList;
  final String headText;
  const HorizontalScrollingWidget(
      {super.key,
      required this.scrollList,
      required this.headText,});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const Text(
                  'Prime',
                  style: MyTextStyle.primeText,
                  textScaleFactor: 1,
                ),
                Text(' -  $headText',
                    style: MyTextStyle.horizontalScrollerTextStyle,
                    textScaleFactor: 1),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(scrollList.length, (index) {
                final data = scrollList[index];
                return Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 15, 0),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                        return DetailsScreen(poster: '${ApiConfig.imagePath}${data.poster}', description: data.overview!, name: data.movieName!, rating: data.averageRating!);
                      }));
                    },
                    child: Container(
                      height: horizontalScrollingContainerHeight(context),
                      width: horizontalScrollingContainerWidth(context),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                            image: NetworkImage('${ApiConfig.imagePath}${data.backdrop}'),
                            fit: BoxFit.cover),
                      ),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            data.movieName!.length>40?data.movieName!.substring(0,35):data.movieName!,
                            style: MyTextStyle.scrollingWidgetText,
                            textScaleFactor: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
