// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class BreadModel {
  final String flavor;
  final String price;
  final color;
  final String imagePath;
  final String detail;
  BreadModel(
      {required this.detail,
      required this.flavor,
      required this.price,
      required this.imagePath,
      required this.color});

  static List<BreadModel> bread = [
    BreadModel(
        detail: "sdsdsd",
        flavor: 'Bun',
        price: 'Rp. 25.0000',
        color: Colors.brown,
        imagePath: 'assets/images/baguette.png'),
    BreadModel(
        detail: "sdsdsd",
        flavor: 'Bakery Bread',
        price: 'Rp. 25.000',
        color: Colors.red,
        imagePath: 'assets/images/baguette_2.png'),
    BreadModel(
        detail: "sdsdsd",
        flavor: 'Bread Beer',
        price: 'Rp. 25.000',
        color: Colors.purple,
        imagePath: 'assets/images/baguette_3.png'),
    BreadModel(
        detail: "sdsdsd",
        flavor: 'Panettone',
        price: 'Rp. 25.0000',
        color: Colors.green,
        imagePath: 'assets/images/baguette_4.png'),
    BreadModel(
        detail: "sdsdsd",
        flavor: 'French Cusine',
        price: 'Rp. 25.000',
        color: Colors.orange,
        imagePath: 'assets/images/baguette_5.png'),
  ];

  static List<BreadModel> brioche = [
    BreadModel(
        detail: "sdsdsd",
        flavor: 'Brioche 1',
        price: 'Rp. 25.0000',
        color: Colors.red,
        imagePath: 'assets/images/brioche1.png'),
    BreadModel(
        detail: "sdsdsd",
        flavor: 'Brioche 2',
        price: 'Rp. 25.000',
        color: Colors.orange,
        imagePath: 'assets/images/brioche1.png'),
    BreadModel(
        detail: "sdsdsd",
        flavor: 'Brioche 3',
        price: 'Rp. 25.000',
        color: Colors.brown,
        imagePath: 'assets/images/brioche1.png'),
    BreadModel(
        detail: "sdsdsd",
        flavor: 'Brioche 4',
        price: 'Rp. 25.0000',
        color: Colors.green,
        imagePath: 'assets/images/brioche1.png'),
    BreadModel(
        detail: "sdsdsd",
        flavor: 'Brioche 5',
        price: 'Rp. 25.000',
        color: Colors.purple,
        imagePath: 'assets/images/brioche1.png'),
  ];


   static List<BreadModel> croissant = [
    BreadModel(
        detail: "sdsdsd",
        flavor: 'Croissant 1',
        price: 'Rp. 25.0000',
        color: Colors.brown,
        imagePath: 'assets/cakepieces/cake-piece1.png'),
    BreadModel(
        detail: "sdsdsd",
        flavor: 'Croissant 2',
        price: 'Rp. 25.000',
        color: Colors.red,
        imagePath: 'assets/cakepieces/cake-piece2.png'),
    BreadModel(
        detail: "sdsdsd",
        flavor: 'Croissant 3',
        price: 'Rp. 25.000',
        color: Colors.purple,
        imagePath: 'assets/cakepieces/cake-piece3.png'),
    BreadModel(
        detail: "sdsdsd",
        flavor: 'Croissant 4',
        price: 'Rp. 25.0000',
        color: Colors.green,
        imagePath: 'assets/cakepieces/cake-piece4.png'),
    BreadModel(
        detail: "sdsdsd",
        flavor: 'Croissant 5',
        price: 'Rp. 25.000',
        color: Colors.orange,
        imagePath: 'assets/cakepieces/cake-piece5.png'),
  ];

  static List<BreadModel> naan = [
    BreadModel(
        detail: "sdsdsd",
        flavor: 'Strawbeer',
        price: 'Rp. 25.0000',
        color: Colors.brown,
        imagePath: 'assets/muffins/muffin1.png'),
    BreadModel(
        detail: "sdsdsd",
        flavor: 'Vanila',
        price: 'Rp. 25.000',
        color: Colors.red,
        imagePath: 'assets/muffins/muffin2.png'),
    BreadModel(
        detail: "sdsdsd",
        flavor: 'Caramel',
        price: 'Rp. 25.000',
        color: Colors.purple,
        imagePath: 'assets/muffins/muffin3.png'),
    BreadModel(
        detail: "sdsdsd",
        flavor: 'Mango',
        price: 'Rp. 25.0000',
        color: Colors.green,
        imagePath: 'assets/muffins/muffin4.png'),
    BreadModel(
        detail: "sdsdsd",
        flavor: 'Chocolate',
        price: 'Rp. 25.000',
        color: Colors.orange,
        imagePath: 'assets/muffins/muffin5.png'),
  ];


  
  static List<BreadModel> sourdough = [
    BreadModel(
        detail: "sdsdsd",
        flavor: 'Wedding',
        price: 'Rp. 25.0000',
        color: Colors.brown,
        imagePath: 'assets/weddingcakes/wedding-cake1.png'),
    BreadModel(
        detail: "sdsdsd",
        flavor: 'Reception',
        price: 'Rp. 25.000',
        color: Colors.red,
        imagePath: 'assets/weddingcakes/wedding-cake2.png'),
    BreadModel(
        detail: "sdsdsd",
        flavor: 'Pre-Wedding',
        price: 'Rp. 25.000',
        color: Colors.purple,
        imagePath: 'assets/weddingcakes/wedding-cake3.png'),
    BreadModel(
        detail: "sdsdsd",
        flavor: 'Engagement',
        price: 'Rp. 25.0000',
        color: Colors.green,
        imagePath: 'assets/weddingcakes/wedding-cake4.png'),
    BreadModel(
        detail: "sdsdsd",
        flavor: 'Anversary',
        price: 'Rp. 25.000',
        color: Colors.orange,
        imagePath: 'assets/weddingcakes/wedding-cake5.png'),
  ];

}
