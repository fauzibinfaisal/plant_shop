import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/theme/app_colors.dart';

class MallSearchBar extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const MallSearchBar({
    super.key,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        children: [
          const Icon(Icons.search, size: 22),
          const Gap(8),
          Expanded(
            child: TextField(
              decoration: const InputDecoration(
                hintText: 'Search products',
                border: InputBorder.none,
              ),
              onChanged: onChanged,
            ),
          ),
          const Icon(Icons.filter_list),
        ],
      ),
    );
  }
}
