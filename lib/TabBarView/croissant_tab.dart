import 'package:flutter/material.dart';
import 'package:mymain/Models/bread_model.dart';
import 'package:mymain/Screens/bread_screen.dart';
import 'package:mymain/Utilities/Tiles/brioche_tile..dart';

import '../Utilities/Tiles/croissant_tile.dart';

class CroissantTab extends StatelessWidget {
  const CroissantTab({super.key});

  @override
  Widget build(BuildContext context) {
    List cakePieces = [
      // flavor, price, color, image
      ['Croissant', '\$25000', Colors.red, 'assets/cakepieces/cake-piece1.png'],
      ['Croissant 2', '\$25000', Colors.purple, 'assets/cakepieces/cake-piece2.png'],
      ['Croissant 3', '\$25000', Colors.brown, 'assets/cakepieces/cake-piece3.png'],
      [
        'Croissant 4',
        '\$25000',
        Colors.green,
        'assets/cakepieces/cake-piece4.png'
      ],
      ['Croissant 5', '\$25000', Colors.orange, 'assets/cakepieces/cake-piece5.png']
    ];
    return GridView.builder(
        itemCount: BreadModel.croissant.length,
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
                          BreadScreen(bread: BreadModel.croissant[index])));
            },
            child: CroissantTile(
              flavor: BreadModel.croissant[index].flavor,
              price: BreadModel.croissant[index].price,
              colors: BreadModel.croissant[index].color,
              imagePath: BreadModel.croissant[index].imagePath,
            ),
          );
        });
  }
}
