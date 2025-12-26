import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  static const TextStyle logo = TextStyle(
    fontSize: 56,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextStyle headline = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
  );

  static const TextStyle title = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
  );

  static const TextStyle subtitle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.textSecondary,
  );

  static const TextStyle description = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w600,

    color: Colors.black,
  );

  static const TextStyle body = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimary,
  );

  static const TextStyle caption = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.normal,
    color: AppColors.textMuted,
  );

  static const TextStyle headerAppointment = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );

  static const TextStyle price = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.normal,
    color: AppColors.textPrice,
  );

  static const TextStyle oldPrice = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.normal,
    color: AppColors.textMuted,
    decoration: TextDecoration.lineThrough,
  );

  static const TextStyle button = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static const TextStyle discount = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w800,
    color: AppColors.textMuted,
  );

  static const TextStyle cardTitle = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.normal,
    color: AppColors.textCardTitle,
  );

  static const TextStyle cardSubtitle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: AppColors.textCardSubtitle,
  );
}
