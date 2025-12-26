import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/theme/app_text_styles.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        height: 90,
        child: Row(
          spacing: 12,
              children: [
                SizedBox(width: 12,),
                ClipRRect(
                  child: Image.asset(
                    'assets/icons/button_icon_1.png',
                    height: 70,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                ),
                ClipRRect(
                  child: Image.asset(
                    'assets/icons/button_icon_2.png',
                    height: 70,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                ),
                ClipRRect(
                  child: Image.asset(
                    'assets/icons/button_icon_3.png',
                    height: 70,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                ),
                ClipRRect(
                  child: Image.asset(
                    'assets/icons/button_icon_4.png',
                    height: 70,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                ),
                ClipRRect(
                  child: Image.asset(
                    'assets/icons/button_icon_5.png',
                    height: 70,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                ),
                ClipRRect(
                  child: Image.asset(
                    'assets/icons/button_icon_1.png',
                    height: 70,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 12,),
              ],
            ),
      ),
    );
  }
}
