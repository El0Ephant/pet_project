import 'package:flutter/material.dart';

class FooterInfo extends StatelessWidget {
  const FooterInfo({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final header = Theme.of(context).textTheme.headline4;
    final content = Theme.of(context).textTheme.bodyText1;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        SizedBox(height: 34, child: Text("PET911", style: header)),
        SizedBox(height: 28, child: Text("Разместите объявление", style: content)),
        SizedBox(height: 28, child: Text("Платные услуги", style: content)),
        SizedBox(height: 28, child: Text("Полезные советы", style: content)),
        SizedBox(height: 28, child: Text("Отзывы", style: content)),
        SizedBox(height: 28, child: Text("Вопросы-ответы", style: content)),
        SizedBox(height: 28, child: Text("О нас", style: content)),
        SizedBox(height: 28, child: Text("Контакты", style: content)),
        const Divider(thickness: 1.5,)
      ],
    );
  }
}