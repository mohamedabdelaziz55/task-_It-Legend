import 'package:flutter/material.dart';
import 'package:task_it/features/home/presentation/widgets/custom_banner.dart';
import 'package:task_it/features/home/presentation/widgets/products_grids.dart';
import '../../../../core/utils/app_colors.dart';
import '../../data/dummy_data/dummy_products.dart';
import 'custom_app_bar.dart';
import 'custom_offers_list_views.dart';
import 'custom_section_list_view.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(color: AppColors.gray),
              SizedBox(height: height * 0.02),
              CustomOffersListView(),
              SizedBox(height: height * 0.03),
              CustomSectionListView(),
              CustomBanner(),
              ProductsGrid(),
            ],
          ),
        ),
      ),
    );
  }
}








