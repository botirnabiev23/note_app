import 'package:flutter/material.dart';
import 'package:note_app/ui/theme/app_colors.dart';

abstract final class AppTextStyles {
  static const TextStyle noteTitle = TextStyle(
    color: AppColors.primaryTextColor,
    fontSize: 16,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
    height: 0,
  );
  static const TextStyle noteDate = TextStyle(
    color: Color(0xffCAC4D0),
    fontSize: 14,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
  );
  static const TextStyle noteText = TextStyle(
    color: AppColors.secondaryTextColor,
    fontSize: 14,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.normal,
    letterSpacing: 0.25,
  );
}
