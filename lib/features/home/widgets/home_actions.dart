import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/theme/app_text_styles.dart';
import '../../../core/utils/responsive.dart';

class HomeActions extends StatelessWidget {
  const HomeActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Responsive.padding(context)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            child: Image.asset(
              'assets/icons/button_shop.png',
              height: 60,
              width: 120,
              fit: BoxFit.fitHeight,
            ),
          ),
          ClipRRect(
            child: Image.asset(
              'assets/icons/button_services.png',
              height: 60,
              width: 110,
              fit: BoxFit.fitHeight,
            ),
          ),
          ClipRRect(
            child: Image.asset(
              'assets/icons/button_posts.png',
              height: 60,
              width: 110,
              fit: BoxFit.fitHeight,
            ),
          ),
        ],
      ),
    );
  }
}

class _ActionItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const _ActionItem({
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    final isSmall = MediaQuery.of(context).size.width < 360;

    return Column(
      children: [
        CircleAvatar(
          radius: isSmall ? 24 : 28,
          backgroundColor: Colors.grey.shade200,
          child: Icon(icon, size: isSmall ? 22 : 28),
        ),
        const SizedBox(height: 8),
        Text(label, style: AppTextStyles.subtitle),
      ],
    );
  }
}
