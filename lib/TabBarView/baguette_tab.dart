import 'package:mymain/Models/bread_model.dart';
import 'package:flutter/material.dart';

import '../Screens/bread_screen.dart';
import '../Utilities/Tiles/baguette_tile.dart';

class BaguetteTab extends StatelessWidget {
  const BaguetteTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<BreadModel> birthdays = BreadModel.bread;
    return BirthdayGrid(birthdays: birthdays);
  }
}

class BirthdayGrid extends StatelessWidget {
  const BirthdayGrid({
    Key? key,
    required this.birthdays,
  }) : super(key: key);

  final List<BreadModel> birthdays;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: birthdays.length,
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.5),
        itemBuilder: (context, index) {
          BreadModel birthdayModel = birthdays[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          BreadScreen(bread: birthdayModel)));
            },
            child: BaguetteTile(
                flavor: birthdayModel.flavor,
                imagePath: birthdayModel.imagePath,
                price: birthdayModel.price,
                colors: birthdayModel.color),
          );
        });
  }
}
