import 'package:flutter/material.dart';

class FooterOffers extends StatelessWidget {
  const FooterOffers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final header = Theme.of(context).textTheme.headline4;
    final content = Theme.of(context).textTheme.bodyText1;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        SizedBox(height: 34, child: Text("УСКОРЬТЕ ПОИСК ПИТОМЦА", style: header)),
        SizedBox(height: 28, child: Text("Распространите объявление в социальных сетях", style: content)),
        SizedBox(height: 28, child: Text("Оповестите клиники и приюты", style: content)),
        SizedBox(height: 28, child: Text("Сообщите волонтёрам о пропаже", style: content)),
        SizedBox(height: 28, child: Text("Оповестите жителей района", style: content)),
        SizedBox(height: 28, child: Text("Создайте премиум-объявление", style: content)),
        SizedBox(height: 28, child: Text("Получайте уведомления о похожих питомцах", style: content)),
        const Divider(thickness: 1.5,)
      ],
    );
  }
}