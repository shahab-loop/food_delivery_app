import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/core/res/theme/theme_manager.dart';
import 'package:food_delivery_app/widgets/drawer_list.dart';
import 'package:gap/gap.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ThemeManager.primaryColor,
      width: 242,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Gap(40),
          Center(
            child: Text(
              'Sanita Queen',
              textAlign: TextAlign.center,
              style: Theme
                  .of(context)
                  .textTheme
                  .displayMedium,
            ),
          ),
          Gap(40),
          DrawerTile(iconpath: 'assets/svgs/profile.svg', data: 'Profile',),
          Gap(40),
          DrawerTile(iconpath: 'assets/svgs/heart.svg', data: 'Wishlist',),
          Gap(40),
          DrawerTile(iconpath: 'assets/svgs/medal.svg', data: 'Loyalty Points',),
          Gap(40),
        ],
      ),
    );
  }

}