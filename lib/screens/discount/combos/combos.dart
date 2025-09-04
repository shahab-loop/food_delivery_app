import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/res/theme/theme_manager.dart';
import 'package:food_delivery_app/screens/cart/cart.dart';
import 'package:food_delivery_app/widgets/circleavatar_home.dart';
import 'package:food_delivery_app/widgets/discountedbuttons_widget.dart';
import 'package:food_delivery_app/widgets/discountedoffers_widget.dart';
import 'package:food_delivery_app/widgets/items.dart';
import 'package:food_delivery_app/widgets/my_drawer.dart';
import 'package:food_delivery_app/widgets/reddiscountbutton_widget.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class Combos extends StatelessWidget {
  const Combos({super.key});

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
                color: ThemeManager.red,
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
                // width: 375,
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
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      children: [
                        DiscountedButtonsWidget(first: 'Combos', second: ''),
                        Gap(10),
                        RedDiscountButtonWidget(image: 'assets/images/shwarma.png',),
                        Gap(40),
                        RedDiscountButtonWidget(image: 'assets/images/rice.png',),
                        Gap(10),
                        Divider(thickness: 4, color: ThemeManager.white12),
                        Gap(26),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatarHome(
                              svgPath: 'assets/svgs/profile.svg',
                            ),
                            Gap(30),
                            CircleAvatarHome(imagePath: Icons.home),
                            Gap(30),
                            CircleAvatarHome(
                              svgPath: 'assets/svgs/greyheart.svg',
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
