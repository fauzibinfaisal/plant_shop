import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/theme/app_text_styles.dart';
import '../../../core/utils/responsive.dart';
import '../models/service_item.dart';

class ServiceCard extends StatelessWidget {
  final ServiceItem item;

  const ServiceCard({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final isSmall = MediaQuery.of(context).size.width < 360;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),

      width: isSmall ? 140 : 160,
      child: Column(


        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              item.image,
              height: isSmall ? 120 : 170,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: EdgeInsets.symmetric(
            horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    item.title,
                  maxLines: 2,
                    style: AppTextStyles.subtitle,
                ),
                const SizedBox(height: 8),
                Text(
                  item.subtitle,
                  style: AppTextStyles.description,
                  maxLines: 2,
                ),
                const SizedBox(height: 4),
                Text(item.price, style: AppTextStyles.price),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
