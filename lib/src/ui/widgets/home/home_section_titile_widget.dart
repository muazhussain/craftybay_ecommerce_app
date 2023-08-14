import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';

class HomeSectionTitleWidget extends StatelessWidget {
  const HomeSectionTitleWidget({
    super.key,
    required this.title,
    required this.seeAllOnPressed,
  });

  final String title;
  final VoidCallback seeAllOnPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            color: blackColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextButton(
          onPressed: seeAllOnPressed,
          child: const Text(
            'See all',
            style: TextStyle(
              color: primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
