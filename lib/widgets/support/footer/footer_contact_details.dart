import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FooterContactDetails extends StatelessWidget {
  const FooterContactDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final header = Theme.of(context).textTheme.headline4;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),

        SizedBox(height: 34, child: Text("СВЯЗАТЬСЯ С НАМИ", style: header)),

        Row(
          children: [
            const SizedBox(
                height: 28,
                child: Text("8 (800) 350-06-10",
                    style:
                        TextStyle(fontSize: 19, fontWeight: FontWeight.bold))),
            const Spacer(),
            SizedBox(width: 35, child: SvgPicture.asset("assets/logo/vk.svg", width: 25)),
            SizedBox(width: 35, child: SvgPicture.asset("assets/logo/facebook.svg", width: 15)),
            SizedBox(width: 35, child: SvgPicture.asset("assets/logo/twitter.svg", width: 25)),
          ],
        ),

        const SizedBox(
            height: 28,
            child: Text("Пн-Пт с 9:00 до 18:00 (МСК)",
                style: TextStyle(fontSize: 10))),

        const Divider(
          thickness: 1.5,
        )
      ],
    );
  }
}
