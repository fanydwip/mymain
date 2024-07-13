import 'package:flutter/material.dart';
import 'package:mymain/Models/bread_model.dart';
import 'package:mymain/Screens/bread_screen.dart';

import '../Utilities/Tiles/naan_tile.dart';

class NaanTab extends StatelessWidget {
  const NaanTab({super.key});

  @override
  Widget build(BuildContext context) {
    List muffins = [
      // flavor, price, color, image
      ['Strawbeer', '\$90', Colors.red, 'assets/muffins/muffin1.png'],
      ['Vanila', '\$80', Colors.green, 'assets/muffins/muffin2.png'],
      ['Caramel', '\$45', Colors.brown, 'assets/muffins/muffin3.png'],
      ['Mango', '\$78', Colors.purple, 'assets/muffins/muffin4.png'],
      ['Chocolate', '\$65', Colors.orange, 'assets/muffins/muffin5.png']
    ];
    return GridView.builder(
        itemCount: BreadModel.naan.length,
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
                          BreadScreen(bread: BreadModel.naan[index])));
            },
            child: NaanTiles(
              flavor: BreadModel.naan[index].flavor,
              price: BreadModel.naan[index].price,
              colors: BreadModel.naan[index].color,
              imagePath: BreadModel.naan[index].imagePath,
            ),
          );
        });
  }
}
