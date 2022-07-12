import 'package:flutter/material.dart';

class FooterHelp extends StatelessWidget {
  const FooterHelp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final header = Theme.of(context).textTheme.headline4;
    final content = Theme.of(context).textTheme.bodyText1;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        SizedBox(height: 34, child: Text("ПОМОЩЬ", style: header)),
        SizedBox(height: 28, child: Text("Станьте волонтёром", style: content)),
        SizedBox(height: 28, child: Text("Поддержите проект", style: content)),
        const Divider(thickness: 1.5,)
      ],
    );
  }
}