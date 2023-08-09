import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_sizes.dart';

class ScreenHeader extends StatelessWidget {
  const ScreenHeader({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(
          'assets/images/logo.png',
          height: 80,
          width: 80,
        ),
        spacerH8,
        Text(
          title,
          style: const TextStyle(
            fontSize: 24,
            color: blackColor,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.5,
          ),
        ),
        spacerH4,
        Text(
          subtitle,
          style: const TextStyle(
            color: greyColor,
            letterSpacing: 0.5,
          ),
        ),
      ],
    );
  }
}
