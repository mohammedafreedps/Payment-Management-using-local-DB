import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Colors.white;
  static const Color secondaryColor =  Color.fromARGB(255, 235, 235, 235);
  static const Color accentColor = Colors.blue;
  static const Color primaryFontColor = Color.fromARGB(255, 35, 35, 35);
  static const Color iconColor = Colors.grey;
}

class TextStyles{
  static const TextStyle primaryNormal = TextStyle(color: AppColors.primaryFontColor);
  static const TextStyle primaryBold = TextStyle(color: AppColors.primaryFontColor,fontWeight: FontWeight.bold);
  static const TextStyle secondaryNormal = TextStyle(color: AppColors.iconColor);
  static const TextStyle secondaryBold = TextStyle(color: AppColors.iconColor,fontWeight: FontWeight.bold);
    static const TextStyle accentNormal = TextStyle(color: AppColors.accentColor);
  static const TextStyle accentBold = TextStyle(color: AppColors.accentColor,fontWeight: FontWeight.bold);
}