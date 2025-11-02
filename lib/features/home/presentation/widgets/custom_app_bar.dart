import 'package:flutter/material.dart';

import '../../../../core/utils/fonts.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, this.onPressed, required this.color});
  final void Function()? onPressed;
  final int color;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
              onPressed: onPressed,
              icon: Icon(Icons.arrow_back_rounded, color: Color(color)),
            ),
            Text(
              'الكل',
              style: Styles.textStyle16.copyWith(color: Color(color)),
            ),
          ],
        ),
        Text("استكشف العروض", style: Styles.textStyle16),
      ],
    );
  }
}
