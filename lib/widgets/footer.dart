import 'package:flutter/material.dart';

import 'package:pet_project/widgets/support/footer/footer_info.dart';
import 'package:pet_project/widgets/support/footer/footer_offers.dart';
import 'package:pet_project/widgets/support/footer/footer_help.dart';
import 'package:pet_project/widgets/support/footer/footer_contact_details.dart';
import 'package:pet_project/widgets/support/footer/footer_end.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          FooterInfo(),
          FooterOffers(),
          FooterHelp(),
          FooterContactDetails(),
          FooterEnd(),
        ],
      ),
    );
  }
}