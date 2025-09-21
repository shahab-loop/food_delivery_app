import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/res/theme/theme_manager.dart';
import 'package:food_delivery_app/screens/loyaltypoint/loyaltypoint.dart';
import 'package:food_delivery_app/screens/payment_methods/payment_methods.dart';
import 'package:food_delivery_app/screens/profile/profile.dart';
import 'package:food_delivery_app/screens/wishlist/wishlist.dart';
import 'package:food_delivery_app/widgets/drawer_tile.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        backgroundColor: ThemeManager.primaryColor,
        width: 242,
        child: Padding(
          padding: const EdgeInsets.only(left: 33),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 70,
                    backgroundColor: ThemeManager.white,
                    backgroundImage: AssetImage('assets/images/shahab.jpg'),
                  ),
                ),
                Gap(40),
                Text(
                  'Shahab Nasir',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                Gap(40),
                DrawerTile(
                  iconpath: 'assets/svgs/profile.svg',
                  data: 'Profile',
                  onTap: () {
                    Get.to(() => Profile());
                  },
                ),
                Gap(40),
                DrawerTile(
                  iconpath: 'assets/svgs/heart.svg',
                  data: 'Wishlist',
                  onTap: () {Get.to(() => Wishlist());},
                ),
                Gap(40),
                DrawerTile(
                  iconpath: 'assets/svgs/medal.svg',
                  data: 'Loyalty Points',
                  onTap: () {Get.to(() => LoyaltyPoint());},
                ),
                Gap(40),
                DrawerTile(
                  iconpath: 'assets/svgs/creditcard.svg',
                  data: 'Payment Methods',
                  onTap: () {Get.to(()=>PaymentMethods());},
                ),
                Gap(40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
