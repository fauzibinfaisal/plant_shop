import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';
import '../models/product_item.dart';

class ProductCard extends StatelessWidget {
  final ProductItem item;

  const ProductCard({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final isSmall = MediaQuery.of(context).size.width < 360;

    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image + Discount Badge
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(10),
                ),
                child: Image.asset(
                  item.image,
                  height: isSmall ? 170 : 188,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              // ✅ Discount Badge (Only if discount > 0)
              if (item.hasDiscount)
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 4,
                      vertical: 16,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.discount,
                      // borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    child: Text(
                      '-${item.discount}%',
                      style: AppTextStyles.discount
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ),
            ],
          ),

          Padding(
            padding: EdgeInsets.all(isSmall ? 8 : 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: AppTextStyles.cardTitle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),

                const SizedBox(height: 4),

                Text(
                  item.subtitle,
                  style: AppTextStyles.cardSubtitle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),

                const SizedBox(height: 4),

                if (item.hasDiscount)
                  Text(
                    'RM ${item.originalPrice.toStringAsFixed(0)}',
                    style: AppTextStyles.oldPrice,
                  ),

                if (item.hasDiscount)
                  const SizedBox(height: 2),

                Text(
                  'RM ${item.finalPrice.toStringAsFixed(0)}',
                  style: AppTextStyles.price,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
