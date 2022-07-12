import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_share/social_share.dart';

class ShareSection extends StatelessWidget {
  const ShareSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: Column(
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                  height: 15,
                  child: Text("Поделиться",
                      style: Theme.of(context).textTheme.headline4))),
          Row(
            children: [
              IconButton(
                iconSize: 44,
                onPressed: () {SocialShare.shareTelegram("Пропал питомец");},
                icon: SvgPicture.asset("assets/logo/Telegram_logo.svg", width: 44, height: 44),
              ),
              IconButton(
                iconSize: 55,
                onPressed: () {SocialShare.shareWhatsapp("Пропал питомец");},
                icon: SvgPicture.asset("assets/logo/Whatsapp-logo.svg", width: 55, height: 55),
              ),
              IconButton(
                iconSize: 44,
                onPressed: () {SocialShare.shareSms("Пропал питомец");},
                icon: SvgPicture.asset("assets/logo/sms.svg", width: 44, height: 44),
              ),
            ],
          )
        ],
      ),
    );
  }
}
