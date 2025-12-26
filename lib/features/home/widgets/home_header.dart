import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:plant_shop/core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/utils/responsive.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Gap(Responsive.padding(context)),
        Text(
          'LOGO',
          style: AppTextStyles.logo,
        ),
        Gap(4),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Divider(
                color: Colors.grey.shade500,
                thickness: 1,
              ),
            ),
            Gap(20),
            Text(
              'Next Appointment',
              style: AppTextStyles.headerAppointment,
            ),
            Gap(20),
            Expanded(
              child: Divider(
                color: Colors.grey.shade500,
                thickness: 1,
              ),
            ),
          ],
        ),
        Gap(16),
        Padding(
          padding: EdgeInsets.symmetric (horizontal: Responsive.padding(context)),
          child: Row(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildHeaderItem(
                  Image.asset(
                    'assets/icons/icon_calender.png',
                    width: 14,
                    height: 14,
                    fit: BoxFit.contain,
                  ),
                '24 Oct 2020'
              ),
              _buildHeaderItem(
                  Image.asset(
                    'assets/icons/icon_calender.png',
                    width: 16,
                    height: 16,
                    fit: BoxFit.contain,
                  ),
                  '24 Oct 2020'
              ),
              _buildHeaderItem(
                  Image.asset(
                    'assets/icons/icon_location_light.png',
                    width: 16,
                    height: 16,
                    fit: BoxFit.contain,
                  ),
                  '123 Plant Stre...'
              ),
              Image.asset(
                'assets/icons/icon_arrow_right_circle.png',
                width: 22,
                height: 22,
                fit: BoxFit.contain,
              ),
              // ImageIcon(
              //   size: 16,
              //   AssetImage('assets/icons/icon_arrow_right_circle.png'),
              //   color: AppColors.primaryLight,
              // ),
            ],
          ),
        ),
      ],
    );
  }
}

Widget _buildHeaderItem(Image icon, String label) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      icon,
      const Gap(2),
      Text(label, style: AppTextStyles.headerAppointment),
    ],
  );
}