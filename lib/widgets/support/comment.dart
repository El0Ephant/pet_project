import 'package:flutter/material.dart';

class Comment extends StatelessWidget {
  const Comment(
      {Key? key,
      required this.user,
      required this.text,
      required this.date,
      required this.marked})
      : super(key: key);

  final String user;
  final String text;
  final String date;

  final bool marked;

  @override
  Widget build(BuildContext context) {
    final userStyle = Theme.of(context)
        .textTheme
        .bodyText1!
        .copyWith(fontWeight: FontWeight.bold);
    final textStyle = Theme.of(context).textTheme.bodyText1;
    final dateStyle = Theme.of(context)
        .textTheme
        .bodyText2!
        .copyWith(color: const Color.fromRGBO(97, 97, 99, 1));
    return Container(
      color: marked ? const Color.fromRGBO(241, 252, 239, 1) : Colors.white,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(22, 6, 22, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20, child: Text(user, style: userStyle)),
            Text(text, style: textStyle),
            SizedBox(
                height: 30,
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(date, style: dateStyle))),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
