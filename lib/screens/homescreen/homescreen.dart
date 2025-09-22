import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/res/theme/theme_manager.dart';
import 'package:food_delivery_app/screens/bestsellers/bestsellers.dart';
import 'package:food_delivery_app/screens/cart/cart.dart';
import 'package:food_delivery_app/screens/discountedoffers/discountedoffers.dart';
import 'package:food_delivery_app/screens/maindishes/maindishes.dart';
import 'package:food_delivery_app/screens/mealplans/mealplans.dart';
import 'package:food_delivery_app/widgets/my_drawer.dart';
import 'package:food_delivery_app/widgets/menuelist_widget.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

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
                      'Menue',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const Gap(20),
                    Text(
                      'Homemade meals prepared with love. Richest ingredients. ',
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
                child: ListView(
                  children: [
                    MenuelistWidget(
                      image: 'assets/images/maindishes.png',
                      menue: 'Main Dishes',
                      rating: '4.9',
                      review: '(355 ratings)',
                      price: '₦2500',
                      onTap: () {
                        print('object');
                        Get.to(() => MainDishes());
                      },
                    ),
                    MenuelistWidget(
                      image: 'assets/images/CheesyBread.png',
                      menue: 'Best Sellers',
                      rating: '4.8',
                      review: '(105 ratings)',
                      price: '₦2000',
                      onTap: () {
                        Get.to(() => Bestsellers());
                      },
                    ),
                    MenuelistWidget(
                      image: 'assets/images/FoodComboOffers.jpg',
                      menue: 'Discounted Offers',
                      rating: '4.6',
                      review: '(500 ratings)',
                      price: '₦500',
                      onTap: () {
                        Get.to(() => DiscountedOffers());
                      },
                    ),
                    MenuelistWidget(
                      image: '',
                      menue: 'Meal Plans',
                      rating: '5',
                      review: '(203 ratings)',
                      price: '₦3000',
                      onTap: () {Get.to(() => Mealplans());},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
