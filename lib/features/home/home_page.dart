import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gap/gap.dart';

import '../../core/theme/app_colors.dart';
import '../../core/utils/responsive.dart';
import '../../core/theme/app_text_styles.dart';
import 'home_controller.dart';
import 'widgets/home_header.dart';
import 'widgets/wallet_card.dart';
import 'widgets/home_actions.dart';
import 'widgets/category_list.dart';
import 'widgets/service_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        // padding: EdgeInsets.all(Responsive.padding(context)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(context),

            //Banner
            _buildBanner(context),
            Gap(Responsive.smallSectionGap(context)),

            _buildHomeAction(context),
            Gap(Responsive.smallSectionGap(context)),

            _buildCategoryList(context),
            Gap(Responsive.smallSectionGap(context)),

            _buildService(context, controller),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 36),
      color: AppColors.primaryBackground,
      child: Column(
        children: [
          const HomeHeader(),
          Gap(Responsive.itemGap(context)),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Responsive.padding(context)),
            child: const WalletCard(),
          ),
          Gap(Responsive.sectionGap(context)),
        ],
      ),
    );
  }

  Widget _buildBanner(BuildContext context) {
    return ClipRRect(
      child: Image.asset(
        'assets/images/home_banner.jpg',
        height: Responsive.isSmall(context) ? 160 : 250,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildHomeAction(BuildContext context) {
    return const HomeActions();
  }

  Widget _buildCategoryList(BuildContext context) {
    return const CategoryList();
  }

  Widget _buildService(BuildContext context, HomeController controller) {
    return Container(
      color: AppColors.background,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Responsive.padding(context)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(Responsive.itemGap(context)),
                    Text(
                      'New Services',
                      style: AppTextStyles.title,
                    ),
                    Gap(2),
                    Text(
                      'Recommended based on your preference',
                      style: AppTextStyles.caption,
                    ),
                  ],
                ),
                Text(
                  'View All',
                  style: AppTextStyles.subtitle,
                ),

              ],
            ),
          ),
          Gap(Responsive.itemGap(context)),

          SizedBox(
            height: Responsive.isSmall(context) ? 180 : 300,
            child: Obx(() {
              return ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                itemCount: controller.services.length,
                separatorBuilder: (_, __) =>
                    Gap(Responsive.smallItemGap(context)),
                itemBuilder: (context, index) {
                  return ServiceCard(
                    item: controller.services[index],
                  );
                },
              );
            }),
          ),
          Gap(Responsive.itemGap(context)),
        ],
      ),
    );
  }
}
