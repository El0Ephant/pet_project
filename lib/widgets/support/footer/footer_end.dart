import 'package:flutter/material.dart';

class FooterEnd extends StatelessWidget {
  const FooterEnd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(color: Color.fromRGBO(140, 140, 140, 1));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        SizedBox(height: 22, child: Text("Пропавшие и найденные животные России", style: style)),
        SizedBox(height: 30, child: Text("Пропавшие и найденные животные России по породам", style: style)),
        SizedBox(height: 22, child: Text("Политика конфеденциальности", style: style)),
        SizedBox(height: 22, child: Text("Условия пользования", style: style)),
        const SizedBox(height: 45),
      ],
    );
  }
}