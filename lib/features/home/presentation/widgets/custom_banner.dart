import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/fonts.dart';

class CustomBanner extends StatelessWidget {
  const CustomBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Container(
      width: double.infinity,
      height: height * 0.05,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.pink.withOpacity(0.05),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("!لأى عرض تطلبه دلوقتى "),
            Row(
              children: [
                Text(
                  "شحن مجانى  ",
                  style: Styles.textStyle16.copyWith(color: AppColors.green),
                ),
                Icon(Icons.check, color: AppColors.green),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
