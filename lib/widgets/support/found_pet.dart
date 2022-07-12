import 'package:flutter/material.dart';

class FoundPet extends StatelessWidget {
  const FoundPet({Key? key, required this.image, required this.title, required this.description, required this.date}) : super(key: key);

  final String image;
  final String title;
  final String description;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width - 150,
            height: 200,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(image, fit: BoxFit.cover),
              ),
          ),
        ),

        Align(alignment:Alignment.centerLeft, child: Text(title, style: Theme.of(context).textTheme.headline3)),
        SizedBox(width: MediaQuery.of(context).size.width - 150, child: Align(alignment:Alignment.centerLeft, child: Text(description, style: Theme.of(context).textTheme.bodyText1))),
        Align(alignment:Alignment.centerLeft, child: Text(date, style: Theme.of(context).textTheme.bodyText2!.copyWith(color: const Color.fromRGBO(97, 97, 99, 1)))),
      ],
    );
  }
}