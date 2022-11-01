import 'package:flutter/material.dart';
import 'package:hp_characters/src/components/app_colors.dart';

// ignore: non_constant_identifier_names
Color CharacterHouseColor(String house) {
  switch (house) {
    case "Gryffindor":
      return AppColors.ruby;
    case "Slytherin":
      return AppColors.emerald;
    case "Ravenclaw":
      return AppColors.sapphire;
    case "Hufflepuff":
      return AppColors.brightYellow;
    default:
      return Colors.black;
  }
}