import 'package:flutter/material.dart';
import 'package:mymain/Models/bread_model.dart';
import 'package:mymain/Screens/bread_screen.dart';

import '../Utilities/Tiles/sourdough_tile.dart';

class SourdoughTab extends StatelessWidget {
  const SourdoughTab({super.key});

  @override
  Widget build(BuildContext context) {
    List weddingCakes = [
      // flavor, price, color, image
      [
        'Wedding',
        '\$290',
        Colors.brown,
        'assets/weddingcakes/wedding-cake1.png'
      ],
      [
        'Reception',
        '\$180',
        Colors.red,
        'assets/weddingcakes/wedding-cake2.png'
      ],
      [
        'Pre-Wedding',
        '\$245',
        Colors.purple,
        'assets/weddingcakes/wedding-cake3.png'
      ],
      [
        'Engagement',
        '\$100',
        Colors.green,
        'assets/weddingcakes/wedding-cake4.png'
      ],
      [
        'Anversary',
        '\$345',
        Colors.orange,
        'assets/weddingcakes/wedding-cake5.png'
      ]
    ];
    return GridView.builder(
        itemCount: BreadModel.sourdough.length,
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
                          BreadScreen(bread: BreadModel.sourdough[index])));
            },
            child: SourdoughTile(
              flavor: BreadModel.sourdough[index].flavor,
              price: BreadModel.sourdough[index].price,
              colors: BreadModel.sourdough[index].color,
              imagePath: BreadModel.sourdough[index].imagePath,
            ),
          );
        });
  }
}
