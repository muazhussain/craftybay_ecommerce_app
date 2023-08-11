import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';

class AppBarIconWidget extends StatelessWidget {
  const AppBarIconWidget({
    super.key,
    required this.iconData,
    required this.onTap,
  });

  final IconData iconData;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: primaryColor.withOpacity(0.1),
      borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: CircleAvatar(
          backgroundColor: greyColor.withOpacity(0.2),
          radius: 20,
          child: Icon(
            iconData,
            color: greyColor.withOpacity(0.5),
            size: 22,
          ),
        ),
      ),
    );
  }
}
