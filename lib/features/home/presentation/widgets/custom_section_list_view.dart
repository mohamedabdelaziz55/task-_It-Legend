
import 'package:flutter/material.dart';

import '../../../../core/utils/fonts.dart';
import '../../data/dummy_data/dummy_sections.dart';

class CustomSectionListView extends StatefulWidget {
  const CustomSectionListView({super.key});

  @override
  State<CustomSectionListView> createState() => _CustomSectionListViewState();
}

class _CustomSectionListViewState extends State<CustomSectionListView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return SizedBox(
      height: height * 0.18,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: dummySections.length,
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
                child: Column(
                  children: [
                    Container(
                      height: height * 0.10,
                      width: height * 0.10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: isSelected
                              ? Colors.orange
                              : Colors.transparent,
                          width: 2,
                        ),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(dummySections[index].imageUrl),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.01),
                    SizedBox(
                      width: width * 0.20,
                      child: Text(
                        dummySections[index].title,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.textStyle14.copyWith(
                          color: isSelected ? Colors.orange : Colors.black,
                          fontWeight: isSelected
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
