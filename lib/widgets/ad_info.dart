import 'package:flutter/material.dart';
import 'package:pet_project/widgets/support/micro_info.dart';
enum Gender {
  male,
  female,
}

extension GenderString on Gender {

  static const names = {
    Gender.male: 'Мужской',
    Gender.female: 'Женский',
  };

  String get name => names[this] ?? "Не указан";
}

class AdInfo extends StatelessWidget {
  const AdInfo({Key? key, required this.id, required this.gender, required this.dateLost, required this.dateFound, required this.owner}) : super(key: key);
  final String id;
  final Gender gender;
  final String dateLost;
  final String dateFound;
  final String owner;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: Align(
        alignment: Alignment.topLeft,
        child: SizedBox(
          width: 250,
          child: Column(
            children: [
                MicroInfo(field: "Номер объявления", info: id),
              MicroInfo(field: "Пол питомца", info: gender.name),
              MicroInfo(field: "Добавлено", info: dateLost),
              MicroInfo(field: "Найден(а)", info: dateFound),
              MicroInfo(field: "Имя хозяина", info: owner),
            ],
          ),
        ),
      ),
    );
  }
}