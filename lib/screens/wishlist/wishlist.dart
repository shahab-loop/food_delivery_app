import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/base_scaffold.dart';
import 'package:food_delivery_app/core/res/theme/theme_manager.dart';
import 'package:food_delivery_app/widgets/button_widget.dart';
import 'package:food_delivery_app/widgets/circleavatar_home.dart';
import 'package:food_delivery_app/widgets/wishlist_widget.dart';
import 'package:gap/gap.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('Wishlist', style: Theme.of(context).textTheme.headlineSmall),
            Gap(9),
            Divider(color: ThemeManager.white12, thickness: 4),
            SizedBox(
              height: 465,
              child: ListView(
                shrinkWrap: true,
                physics: AlwaysScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  WishlistWidget(
                    image: 'assets/images/Jollofspaghetti.png',
                    menue: 'Jollof Spaghetti',
                  ),
                  WishlistWidget(
                    image: 'assets/images/Jollofspaghetti.png',
                    menue: 'Jollof Spaghetti',
                  ),
                  WishlistWidget(
                    image: 'assets/images/Jollofspaghetti.png',
                    menue: 'Jollof Spaghetti',
                  ),
                ],
              ),
            ),
            Gap(64),
            ButtonWidget(text: 'Buy Now'),
            Gap(26),
            Divider(color: ThemeManager.white12, thickness: 4),
            Gap(26),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatarHome( svgPath: 'assets/svgs/profile.svg'),
                Gap(30),
                CircleAvatarHome( imagePath: Icons.home,),
                Gap(30),
                CircleAvatarHome( svgPath: 'assets/svgs/greybucket.svg'),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
