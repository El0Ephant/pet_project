import 'package:flutter/material.dart';

class MicroInfo extends StatelessWidget {
  const MicroInfo({Key? key, required this.field, required this.info}) : super(key: key);

  final String field;
  final String info;
  @override
  Widget build(BuildContext context) {
    final black = Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.black);
    final grey = Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.grey);

    return SizedBox(
      height: 30,
      child: Row(
        children: [
          Text(field, style: grey),
          const Spacer(),
          Text(info, style: black),
        ],
      ),
    );
  }
}

