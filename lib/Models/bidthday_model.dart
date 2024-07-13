// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class BirthdayModel {
  final String flavor;
  final String price;
  final color;
  final String imagePath;
  BirthdayModel(
      {required this.flavor,
      required this.price,
      required this.imagePath,
      required this.color});

  static List<BirthdayModel> birthday = [
    BirthdayModel(
        flavor: 'Baguette',
        price: 'Rp. 25.0000',
        color: Colors.brown,
        imagePath: 'assets/images/slider/bread.png'),
    BirthdayModel(
        flavor: 'Brioche',
        price: 'Rp. 25.000',
        color: Colors.red,
        imagePath: 'assets/images/slider/brioche.png'),
    BirthdayModel(
        flavor: 'Croissant',
        price: 'Rp. 25.000',
        color: Colors.purple,
        imagePath: 'assets/images/slider/croissant.png'),
    BirthdayModel(
        flavor: 'Naan',
        price: 'Rp. 25.0000',
        color: Colors.green,
        imagePath: 'assets/images/slider/naan.png'),
    BirthdayModel(
        flavor: 'Sourdough',
        price: 'Rp. 25.000',
        color: Colors.orange,
        imagePath: 'assets/images/slider/sourdough.png'),
  ];
}
