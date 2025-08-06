import 'package:flutter/material.dart';

enum StickerwaColors {
  darkGreen("Dark Green", Color(0xFF3d5656)),
  lightGreen("Light Green", Color(0xFFcffde1)),
  mediumGreen("Medium Green", Color(0xFF86EFAC)),
  boldGreen("Soft Green", Color(0xFF68b984)),
  red("Red", Colors.redAccent),
  white("White", Colors.white),
  boneWhite("Bone White", Color(0xFFcbc9c9)),
  black("Black", Colors.black);

  const StickerwaColors(this.name, this.color);

  final String name;
  final Color color;
}