import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:pet_project/widgets/support/comment.dart';

class Comments extends StatelessWidget {
  Comments(this.count,
      {Key? key,
      required this.users,
      required this.texts,
      required this.dates,
      required this.marks})
      : super(key: key);

  final int count;
  final List<String> users;
  final List<String> texts;
  final List<String> dates;
  final List<bool> marks;

  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: SizedBox(
            height: 40,
            child: Text("Комментарии ($count)",
                style: Theme.of(context).textTheme.headline2),
          ),
        ),
        Container(
          height: 54,
          color: const Color.fromRGBO(246, 246, 246, 1),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(22, 10,22,  9),
            child: TextField(
              textAlignVertical: TextAlignVertical.bottom,
              style: const TextStyle(color: Color.fromRGBO(97, 97, 99, 1), fontSize: 13),
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: 'Введите комментарий...',
                suffixIcon: TextButton(onPressed: (){_controller.clear();}, child: const Text("Отпр.", style: TextStyle(color: Color.fromRGBO(28,138,56,1))))
              ),
              controller: _controller,
              onSubmitted: (_) {_controller.clear();},
            ),
          ),
        ),
        ListView.builder(
          itemBuilder: (context, i) {
            return Comment(
                user: users[i],
                text: texts[i],
                date: dates[i],
                marked: marks[i]);
          },
          itemCount: count,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
        ),

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.0),
          child: Divider(thickness: 1.5,),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                SvgPicture.asset("assets/other/Triangle.svg"),
                const Padding(
                  padding: EdgeInsets.only(left: 7.5, top:2),
                  child: Text("!", style: TextStyle(color: Color.fromRGBO(25, 138, 56,1))),
                )
              ],
            ),
            const SizedBox(width: 5),
            Text("Пожаловаться на объявление", style: Theme.of(context).textTheme.headline4!.copyWith(color: const Color.fromRGBO(25, 138, 56,1)),),
          ],
        ),

        const Divider(thickness: 1.5,),
      ],
    );
  }
}
