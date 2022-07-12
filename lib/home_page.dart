import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:social_share/social_share.dart';
//import 'package:share_plus/share_plus.dart';

import 'package:pet_project/theme.dart';
import 'package:pet_project/widgets/pet_images.dart';
import 'package:pet_project/widgets/same_cases.dart';
import 'package:pet_project/widgets/ad_description.dart';
import 'package:pet_project/widgets/ad_info.dart';
import 'package:pet_project/widgets/share_section.dart';
import 'package:pet_project/widgets/comments.dart';
import 'package:pet_project/widgets/footer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool like = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: petTheme.primaryColor,
          leadingWidth: 100,
          leading: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back,
                    color: Color.fromRGBO(25, 138, 56, 1)),
              ),
              Text("Назад",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: const Color.fromRGBO(25, 138, 56, 1),
                      fontWeight: FontWeight.bold)),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  like = !like;
                });
              },
              icon: like ? const Icon(CupertinoIcons.heart_solid,
                  color: Colors.pink) : const Icon(CupertinoIcons.heart,
                  color: Color.fromRGBO(25, 138, 56, 1)),
            ),
            IconButton(
                onPressed: () {
                  SocialShare.shareOptions("Пропало животное");
                },
                icon: const Icon(Icons.ios_share,
                    color: Color.fromRGBO(25, 138, 56, 1))),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const PetImages(),

              const AdDescription(
                title: "Пропал кот",
                location: "Красноармейская улица, 37, Ростов-на-Дону",
                description:
                    "На Красноармейской пропал каракал. Предположительно выпрыгнул через открытое окно. Отзывается на свою кличку “Шлёпа” или “Русский кот”. Очень любит пельмени. Клеймо отсутствует, полное телосложение. Чистый и ухоженный, людей не боится.",
                phone: "88005553535",
              ),

              const ShareSection(),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 22.0),
                child: Divider(thickness: 1.5),
              ),

              const AdInfo(
                  id: "RF488918",
                  gender: Gender.male,
                  dateLost: "Вт, 21.09.2021",
                  dateFound: "Вт, 21.09.2021",
                  owner: "Владимир"),

              const SameCases(
                images: ["assets/pet/pet1.jpg","assets/pet/pet2.jpg","assets/pet/pet3.jpg","assets/pet/pet4.jpg"],
                titles: ["Найден кот", "Найден кот", "Найден кот", "Найден кот"],
                descriptions: ["На западном пропала собака овчарка, приметы: рост метров двадцать...", "На западном пропала собака овчарка, приметы: рост метров двадцать...","На западном пропала собака овчарка, приметы: рост метров двадцать...","На западном пропала собака овчарка, приметы: рост метров двадцать..."],
                dates: ["8.10.2021", "8.10.2021", "8.10.2021", "8.10.2021"],
              ),

              Comments(4,
                users: ["Арсений","Дмитрий","Женя","Анна"],
                texts: ["“На Красноармейской пропал каракал” - звучит уже неплохо!", "Как вернусь в Ростов, обыщу наши подвалы, я рядом живу", "Отшивался какой-то рыжий тут", "Вроде видела похожего возле Мёда"],
                dates: ["Понедельник, 5:33","Понедельник, 6:47","Понедельник, 17:33","Вторник, 11:07"],
                marks: [true, false, false, false],
              ),

              const Footer()
            ],
          ),
        ));
  }
}
