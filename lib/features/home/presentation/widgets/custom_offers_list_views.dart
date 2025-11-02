
import 'package:flutter/material.dart';

import '../../../../core/utils/fonts.dart';
import '../../data/dummy_data/dummy_offers.dart';

class CustomOffersListView extends StatefulWidget {
  const CustomOffersListView({super.key});

  @override
  State<CustomOffersListView> createState() => _CustomOffersListViewState();
}

class _CustomOffersListViewState extends State<CustomOffersListView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: height * 0.06,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: dummyOffers.length,
          itemBuilder: (context, index) {
            bool isSelected = selectedIndex == index;

            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                child: Chip(
                  backgroundColor: isSelected
                      ? Colors.orange.withOpacity(0.12)
                      : Colors.white,
                  label: Text(
                    dummyOffers[index],
                    style: Styles.textStyle14.copyWith(
                      color: isSelected ? Colors.orange : Colors.black,
                      fontWeight: isSelected
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}