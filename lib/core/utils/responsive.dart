import 'package:flutter/material.dart';

class Responsive {
  static bool isSmall(BuildContext context) =>
      MediaQuery.of(context).size.width < 360;

  static double padding(BuildContext context) =>
      isSmall(context) ? 12 : 16;

  static double sectionGap(BuildContext context) =>
      isSmall(context) ? 16 : 32;

  static double smallSectionGap(BuildContext context) =>
      isSmall(context) ? 8 : 10;

  static double itemGap(BuildContext context) =>
      isSmall(context) ? 8 : 12;

  static double smallItemGap(BuildContext context) =>
      isSmall(context) ? 8 : 10;
}
