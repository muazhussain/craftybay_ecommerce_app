import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      textInputAction: TextInputAction.search,
      onSubmitted: (value) {},
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 8),
        prefixIcon: const Icon(Icons.search_outlined),
        prefixIconColor: greyColor,
        fillColor: greyColor.withOpacity(0.1),
        filled: true,
        hintText: 'Search',
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
