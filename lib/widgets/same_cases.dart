import 'package:flutter/material.dart';
import 'package:pet_project/widgets/support/found_pet.dart';

class SameCases extends StatelessWidget {
  const SameCases({Key? key, required this.images, required this.titles, required this.descriptions, required this.dates}) : super(key: key);

  final List<String> images;
  final List<String> titles;
  final List<String> descriptions;
  final List<String> dates;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                  height: 30,
                  child: Text("Похожие пропавшие",
                      style: Theme.of(context).textTheme.headline2))),
          SizedBox(
            height: 300,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, i) {
                return FoundPet(
                    image: images[i],
                    title: titles[i],
                    description: descriptions[i],
                    date: dates[i]);
              },
              itemCount: 4,
            ),
          ),
        ],
      ),
    );
  }
}
