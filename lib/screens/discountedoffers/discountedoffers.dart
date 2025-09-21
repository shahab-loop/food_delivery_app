import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/res/theme/theme_manager.dart';
import 'package:food_delivery_app/screens/cart/cart.dart';
import 'package:food_delivery_app/screens/discount/combos/combos.dart';
import 'package:food_delivery_app/screens/discount/fiftypercent/fiftypercent.dart';
import 'package:food_delivery_app/screens/discount/quarter/quarter.dart';
import 'package:food_delivery_app/screens/discount/twoforone/twoforone.dart';
import 'package:food_delivery_app/screens/homescreen/homescreen.dart';
import 'package:food_delivery_app/screens/profile/profile.dart';
import 'package:food_delivery_app/widgets/circleavatar_home.dart';
import 'package:food_delivery_app/widgets/discountedoffers_widget.dart';
import 'package:food_delivery_app/widgets/items.dart';
import 'package:food_delivery_app/widgets/my_drawer.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class DiscountedOffers extends StatelessWidget {
  const DiscountedOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              right: 0,
              left: 0,
              top: 0,
              child: Container(
                height: 325,
                width: double.infinity,
                color: ThemeManager.primaryColor,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Builder(
                          builder: (context) => IconButton(
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            },
                            icon: const Icon(
                              Icons.menu,
                              color: ThemeManager.white,
                              size: 30,
                            ),
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => Cart());
                          },
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: ThemeManager.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset(
                                'assets/images/bucket.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                      ],
                    ),
                    Text(
                      'Discounted Offers',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const Gap(20),
                    Text(
                      'Click for deals on combos and dishes which are refreshed weekly.  ',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    const Gap(20),
                    SizedBox(
                      width: 232,
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: ThemeManager.headerColor,
                          ),
                          hintText: 'Search Menu',
                          filled: true,
                          focusColor: ThemeManager.white,
                          fillColor: Color(0xffF3F3F3),
                          hintStyle: Theme.of(context).textTheme.titleMedium,
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(31),
                            borderSide: BorderSide(color: ThemeManager.black),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(31),
                            borderSide: BorderSide(
                              color: ThemeManager.headerColor,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(31),
                            borderSide: BorderSide(
                              color: ThemeManager.primaryColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Positioned(
              top: 250,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                width: 375,
                height: 325,
                decoration: BoxDecoration(
                  color: ThemeManager.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            DiscountedOffersWidget(
                              image: 'assets/images/forone.png',
                              onTap: () {
                                Get.to(() => TwoForOne());
                              },
                            ),
                            Gap(140),
                            DiscountedOffersWidget(
                              image: 'assets/images/combos.png',
                              onTap: () {
                                Get.to(() => Combos());
                              },
                            ),
                            Gap(10),
                          ],
                        ),
                        Gap(10),
                        Row(
                          children: [
                            DiscountedOffersWidget(
                              image: 'assets/images/quarter.png',
                              onTap: () {
                                Get.to(() => Quarter());
                              },
                            ),
                            Gap(140),
                            DiscountedOffersWidget(
                              image: 'assets/images/fiftypercent.png',
                              onTap: () {
                                Get.to(() => FiftyPercent());
                              },
                            ),
                            Gap(10),
                          ],
                        ),
                        Divider(thickness: 2, color: ThemeManager.white12),
                        Row(
                          children: [
                            Items(
                              image: 'assets/images/shwarma.png',
                              height: 110,
                              width: 110,
                            ),
                            Gap(100),
                            Items(
                              image: 'assets/images/CheesyBread.png',
                              height: 110,
                              width: 110,
                            ),
                          ],
                        ),
                        Gap(10),
                        Row(
                          children: [
                            Items(
                              image: 'assets/images/maindishes.png',
                              height: 110,
                              width: 110,
                            ),
                            Gap(100),
                            Items(
                              image: 'assets/images/JollofRice.png',
                              height: 110,
                              width: 110,
                            ),
                            Gap(10),
                          ],
                        ),
                        Gap(10),
                        Row(
                          children: [
                            Items(
                              image: 'assets/images/Jollofspaghetti.png',
                              height: 110,
                              width: 110,
                            ),
                            Gap(100),
                            Items(
                              image: 'assets/images/amala.png',
                              height: 110,
                              width: 110,
                            ),
                            Gap(10),
                          ],
                        ),
                        Divider(thickness: 4, color: ThemeManager.white12),
                        Gap(26),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatarHome(
                              svgPath: 'assets/svgs/profile.svg',onTap:() {
                              Get.to(Profile());
                            } ,
                            ),
                            Gap(30),
                            CircleAvatarHome(imagePath: Icons.home,onTap:() {
                              Get.to(Homescreen());
                            } ,),
                            Gap(30),
                            CircleAvatarHome(
                              svgPath: 'assets/svgs/greybucket.svg',onTap:() {
                              Get.to(Cart());
                            } ,
                            ),
                          ],
                        ),
                        Gap(26),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
