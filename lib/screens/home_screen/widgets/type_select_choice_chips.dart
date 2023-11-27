import 'package:amazon_prime_clone/api/api_data_fetch/api_fetch.dart';
import 'package:flutter/material.dart';

class TypeSelector extends StatefulWidget {
  const TypeSelector({Key? key}) : super(key: key);

  @override
  State<TypeSelector> createState() => _TypeSelectorState();
}

class _TypeSelectorState extends State<TypeSelector> {
  late int selectedChip;

  @override
  void initState() {
    super.initState();
    selectedChip = 0;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
        child: Wrap(
          spacing: 20,
          children: [
            ChoiceChip(
              
              elevation: 0,
              label: const Text('All',textScaleFactor: 1),
              side: const BorderSide(width: 0),
              selected: selectedChip == 0,
              onSelected: (bool selected) async{
                await fetchAll();

                if (selected) {
                  setState(() {
                    selectedChip = 0;
                  });
                }
              },
              backgroundColor: const Color.fromARGB(255, 0, 4, 9),
              labelStyle: TextStyle(
                color: selectedChip == 0
                    ? const Color.fromARGB(255, 0, 0, 0)
                    : const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            ChoiceChip(
              elevation: 0,
              label: const Text('Movies',textScaleFactor: 1),
              side: const BorderSide(width: 0),
              selected: selectedChip == 1,
              onSelected: (bool selected) async{
                await fetchMovies();
                if (selected) {
                  setState(() {
                    selectedChip = 1;
                  });
                }
              },
              backgroundColor: const Color.fromARGB(255, 0, 4, 9),
              labelStyle: TextStyle(
                color: selectedChip == 1
                    ? const Color.fromARGB(255, 0, 0, 0)
                    : const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            ChoiceChip(
              elevation: 0,
              label: const Text('TV shows',textScaleFactor: 1),
              side: const BorderSide(width: 0),
              selected: selectedChip == 2,
              onSelected: (bool selected) async{
                await fetchTv();
                if (selected) {
                  setState(() {
                    selectedChip = 2;
                  });
                }
              },
              backgroundColor: const Color.fromARGB(255, 0, 4, 9),
              labelStyle: TextStyle(
                color: selectedChip == 2
                    ? const Color.fromARGB(255, 0, 0, 0)
                    : const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
