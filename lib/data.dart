import 'package:flutter/material.dart';
import 'package:project/screens/black.dart';
import 'package:project/screens/brown.dart';
import 'package:project/screens/grey.dart';
import 'package:project/screens/purple.dart';
import 'package:project/screens/red.dart';
import 'package:project/screens/orange.dart';
import 'package:project/screens/blue.dart';
import 'package:project/screens/green.dart';
import 'package:project/screens/yellow.dart';

class CardInfo {
  final int position;
  final String text;
  final String image;
  final Color color; // Directly a Color object

  CardInfo(this.position, {
    required this.text,
    required this.image,
    required this.color,
  });
}

List<CardInfo> cardList = [
  CardInfo(1, text:"Red", image: "assets/images/red.png", color: Colors.red),
  CardInfo(2, text: "Blue", image: "assets/images/blue.png", color: Colors.blue),
  CardInfo(3, text: "Orange", image: "assets/images/orange.png", color: Colors.orange),
  CardInfo(4, text: "Yellow", image: "assets/images/yellow.png", color: Colors.yellow),
  CardInfo(5, text: "Green", image: "assets/images/green.png", color: Colors.green),
  CardInfo(6, text: "Purple", image: "assets/images/purple.png", color: Colors.purple),
  CardInfo(7, text: "Brown", image: "assets/images/brawn.png", color: Colors.brown),
  CardInfo(8, text: "Black", image: "assets/images/black.png", color: Colors.black),
  CardInfo(8, text: "Grey", image: "assets/images/gray.png", color: Colors.grey),
];

// ... rest of your code
final List<Widget> screenslist = [
  redPage(),
  bluepage(),
  orangepage(),
  yellowpage(),
  greenpage(),
  purplepage(),brownpage(),blackpage(),greypage(),
];