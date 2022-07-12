import 'package:flutter/material.dart';

class PetImages extends StatefulWidget {
  const PetImages({Key? key}) : super(key: key);

  @override
  State<PetImages> createState() => _PetImagesState();
}

class _PetImagesState extends State<PetImages> {
  int current = 1;
  String page = "1/4";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 300,
        child: Stack(
          children: [
            PageView.builder(
              itemBuilder: (context, i) {
                return Image.asset(
                  "assets/pet/floppa${i % 4 + 1}.jpg",
                  fit: BoxFit.fitHeight,
                );
              },
              onPageChanged: (i) {
                setState(() {
                  current = i % 4 + 1;
                  page = "$current/4";
                });
              },
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(2.5)),
                        color: Colors.black,
                      ),
                      width: 34,
                      height: 18,
                      child: Center(
                        child: Text(page,
                            style: const TextStyle(
                                color: Colors.white)),
                      )),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ));
  }
}
