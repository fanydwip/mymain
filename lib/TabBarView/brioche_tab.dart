import 'package:flutter/material.dart';
import 'package:mymain/Models/bread_model.dart';
import 'package:mymain/Screens/bread_screen.dart';

import '../Utilities/Tiles/brioche_tile..dart';

class BriocheTab extends StatelessWidget {
  const BriocheTab({super.key});

  @override
  Widget build(BuildContext context) {
    List cupCakes = [
      // flavor, price, color, image
      ['Brioche 1', '\$25000', Colors.red, 'assets/images/brioche1.png'],
      ['Brioche 2', '\$25000', Colors.orange, 'assets/images/brioche2.png'],
      ['Brioche 3', '\$25000', Colors.brown, 'assets/images/brioche3.png'],
      ['Brioche 4', '\$25000', Colors.green, 'assets/images/brioche4.png'],
      ['Brioche 5', '\$25000', Colors.purple, 'assets/images/brioche5.png']
    ];
    return GridView.builder(
        itemCount: BreadModel.brioche.length,
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.5),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
                 Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          BreadScreen(bread: BreadModel.brioche[index])));
            },
            child: BriocheTiles(
              flavor: BreadModel.brioche[index].flavor,
              price: BreadModel.brioche[index].price,
              colors: BreadModel.brioche[index].color,
              imagePath: BreadModel.brioche[index].imagePath,
            ),
          );
        });
  }
}
