import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_sizes.dart';

class CategoryCardWidget extends StatelessWidget {
  const CategoryCardWidget({
    super.key,
    required this.categoryTitle,
    required this.iconData,
  });

  final String categoryTitle;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: primaryColor.withOpacity(0.15),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Icon(
              iconData,
              size: 28,
              color: primaryColor,
            ),
          ),
        ),
        spacerH4,
        Text(
          categoryTitle,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: primaryColor,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.6,
          ),
        ),
      ],
    );
  }
}
