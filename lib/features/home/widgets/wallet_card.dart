import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';

class WalletCard extends StatelessWidget {
  const WalletCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildItem('CREDIT', 'RM250.00'),
          VerticalDivider(
            color: AppColors.divider,
            thickness: 0.5
          ),
          _buildItem('POINTS', '120'),
          VerticalDivider(
            color: AppColors.divider,
            thickness: 0.5
          ),
          _buildItem('PACKAGE', '3'),
        ],
      ),
    );
  }

  Widget _buildItem(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(title, style: AppTextStyles.caption.copyWith(color: AppColors.primary)),
        const Gap(2),
        Text(value, style: AppTextStyles.title.copyWith(color: AppColors.primary)),
      ],
    );
  }
}
