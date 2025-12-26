import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gap/gap.dart';

import '../../core/utils/responsive.dart';
import '../../core/theme/app_text_styles.dart';
import 'mall_controller.dart';
import 'widgets/product_card.dart';

class MallPage extends StatelessWidget {
  const MallPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MallController());
    final padding = Responsive.padding(context);

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsets.all(padding),
              sliver: SliverToBoxAdapter(
                child: _buildSearchBar(context, controller),
                // child: MallSearchBar(
                //   onChanged: controller.search,
                // ),
              ),
            ),

            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: padding),
              sliver: Obx(() {
                if (controller.filteredProducts.isEmpty) {
                  return SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.only(top: padding * 2),
                      child: Column(
                        children: const [
                          Icon(
                            Icons.search_off,
                            size: 64,
                            color: Colors.grey,
                          ),
                          SizedBox(height: 16),
                          Text(
                            'No products found',
                            style: AppTextStyles.title,
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Try using a different keyword',
                            style: AppTextStyles.caption,
                          ),
                        ],
                      ),
                    ),
                  );
                }

                return SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                        (context, index) {
                      return ProductCard(
                        item: controller.filteredProducts[index],
                      );
                    },
                    childCount: controller.filteredProducts.length,
                  ),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: padding * 0.50,
                    crossAxisSpacing: padding * 0.30,
                    childAspectRatio: 0.55,
                  ),
                );
              }),
            ),

            const SliverToBoxAdapter(child: Gap(24)),
          ],
        ),
      ),
    );
  }
}

Widget _buildSearchBar(BuildContext context, MallController controller) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
    child: Row(
      children: [
        // Search Field
        Expanded(
          child: Container(
            height: 44,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(22),
              border: Border.all(
                color: Colors.grey.shade200,
              ),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.search,
                  size: 20,
                  color: Colors.grey,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: 'Search Plant',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                      border: InputBorder.none,
                      isDense: true,
                    ),
                    onChanged: (value) {
                      controller.search(value);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),

        const SizedBox(width: 12),

        // Filter Button
        Container(
          height: 44,
          width: 44,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.grey.shade200,
            ),
          ),
          child: const Icon(
            Icons.tune,
            size: 20,
            color: Colors.black87,
          ),
        ),
      ],
    ),
  );
}