import 'package:flutter/material.dart';

import '../../constants/app_sizes.dart';
import '../../widgets/home/app_bar_icon_widget.dart';
import '../../widgets/home/home_carousel_slider_widget.dart';
import '../../widgets/home/home_section_titile_widget.dart';
import '../../widgets/home/search_bar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/logo_nav.png'),
        centerTitle: false,
        actions: <Widget>[
          AppBarIconWidget(
            iconData: Icons.person_outline,
            onTap: () {},
          ),
          AppBarIconWidget(
            iconData: Icons.phone,
            onTap: () {},
          ),
          AppBarIconWidget(
            iconData: Icons.notifications_outlined,
            onTap: () {},
          ),
          spacerW8,
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: <Widget>[
                const SearchBarWidget(),
                spacerH8,
                HomeCarouselSliderWidget(),
                spacerH8,
                HomeSectionTitleWidget(
                  title: 'All Categories',
                  seeAllOnPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
