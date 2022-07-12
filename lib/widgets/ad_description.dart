import 'package:flutter/material.dart';

class AdDescription extends StatefulWidget {
  const AdDescription({Key? key, required this.title, required this.location, required this.description, required this.phone}) : super(key: key);

  final String title;
  final String location;
  final String description;
  final String phone;
  @override
  State<AdDescription> createState() => _AdDescriptionState();
}

class _AdDescriptionState extends State<AdDescription> {


  bool show = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 17,
          ),
          SizedBox(
            height: 35,
              child: Text(widget.title, style: Theme.of(context).textTheme.headline1)
          ),

          Text(widget.location, style: Theme.of(context).textTheme.bodyText1),

          InkWell(
            onTap: (){},
            child: SizedBox(
              height: 30,
              child: Text("Показать на карте",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(color: const Color.fromRGBO(25, 138, 56, 1))),
            ),
          ),

          Text(
              widget.description,
              style: Theme.of(context).textTheme.bodyText1),

          const SizedBox(height: 25),

          SizedBox(
            width: MediaQuery.of(context).size.width - 20,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  show = !show;
                });
              },
              child: Text(show ? widget.phone: "Показать номер хозяина", style: Theme.of(context).textTheme.bodyText1!.copyWith(color: const Color.fromRGBO(33,46,60,1))),

              style: ElevatedButton.styleFrom(
                  primary: const Color.fromRGBO(207, 233, 220, 1)),
            ),
          )
        ]),
      ),
    );
  }
}
