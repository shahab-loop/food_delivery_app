import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/common/base_scaffold.dart';
import 'package:food_delivery_app/core/res/theme/theme_manager.dart';
import 'package:food_delivery_app/screens/cart/cart.dart';
import 'package:food_delivery_app/screens/homescreen/homescreen.dart';
import 'package:food_delivery_app/widgets/circleavatar_home.dart';
import 'package:gap/gap.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../profile/profile.dart';

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(31.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    'Payment Methods',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Gap(25),
                  Divider(color: ThemeManager.primaryColor, thickness: 4),
                  Gap(38),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40,
                        width: 70,
                        child: SvgPicture.asset('assets/svgs/visa.svg'),
                      ),
                      Container(
                        height: 40,
                        width: 70,
                        child: SvgPicture.asset('assets/svgs/2cc.svg'),
                      ),
                    ],
                  ),
                  Gap(38),
                  Divider(color: ThemeManager.primaryColor, thickness: 2),
                  Gap(38),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40,
                        width: 70,
                        child: SvgPicture.asset('assets/svgs/mastercard.svg'),
                      ),
                      Container(
                        height: 40,
                        width: 70,
                        child: SvgPicture.asset('assets/svgs/a.svg'),
                      ),
                    ],
                  ),
                  Gap(38),
                  Divider(color: ThemeManager.primaryColor, thickness: 2),
                  Gap(38),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40,
                        width: 70,
                        child: SvgPicture.asset('assets/svgs/jcb.svg'),
                      ),
                      Container(
                        height: 40,
                        width: 70,
                        child: SvgPicture.asset('assets/svgs/amex.svg'),
                      ),
                    ],
                  ),
                  Gap(38),
                  Divider(color: ThemeManager.primaryColor, thickness: 2),
                  Gap(38),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40,
                        width: 70,
                        child: SvgPicture.asset('assets/svgs/discover.svg'),
                      ),
                      Container(
                        height: 40,
                        width: 70,
                        child: SvgPicture.asset('assets/svgs/stripe.svg'),
                      ),
                    ],
                  ),
                  Gap(38),
                  Divider(color: ThemeManager.primaryColor, thickness: 2),
                  Gap(33),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [ CircleAvatarHome(svgPath: 'assets/svgs/profile.svg',onTap: () {
                    Get.to(Profile());
                  },),
                    Gap(36),
                    CircleAvatarHome(imagePath: Icons.home,onTap:() {
                      Get.to(Homescreen());
                    } ,),
                    Gap(36),
                    CircleAvatarHome(svgPath: 'assets/svgs/greybucket.svg',onTap: () {
                      Get.to(Cart());
                    },),
                ],)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
