import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/common/base_scaffold.dart';
import 'package:food_delivery_app/core/res/theme/theme_manager.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class Mealplans extends StatelessWidget {
  const Mealplans({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ThemeManager.white,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back;
                      },
                      child: SvgPicture.asset('assets/svgs/exit.svg'),
                    ),
                  ],
                ),
                Text(
                  'Meal Plans',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                Gap(20),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomWidgetBox(
                      Data: 'WaraEenie',
                      Data2: '3 food deliveries weekly',
                      Data3: 'Free Drink',
                      Data4: 'Free Birthday Cake',
                    ),
                    CustomWidgetBox(
                      Data: 'WaraMeenie',
                      Data2: '3 food deliveries weekly',
                      Data3: 'Free Drink',
                      Data4: 'Free Birthday Cake',
                    ),
                  ],
                ),
                Gap(70),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomWidgetBox(
                      Data: 'WaraMoe',
                      Data2: '3 food deliveries weekly',
                      Data3: 'Free Drink',
                      Data4: 'Free Birthday Cake',
                    ),
                    CustomWidgetBox(
                      Data: 'WaraMiny',
                      Data2: '3 food deliveries weekly',
                      Data3: 'Free Drink',
                      Data4: 'Free Birthday Cake',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomWidgetBox extends StatelessWidget {
  final String Data;
  final String Data2;
  final String Data3;
  final String Data4;

  const CustomWidgetBox({
    super.key,
    required this.Data,
    required this.Data2,
    required this.Data3,
    required this.Data4,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 166,
          height: 180,
          decoration: BoxDecoration(
            color: ThemeManager.white,
            borderRadius: BorderRadius.circular(14),
            boxShadow: [
              // Bottom shadow
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 6,
                spreadRadius: 1,
                offset: const Offset(0, 6),
              ),
              // Left shadow
              BoxShadow(
                color: Colors.black.withOpacity(0.20),
                // blurRadius: 2,
                // spreadRadius: 0,
                // offset: const Offset(1, 0),
              ),
              // Right shadow
              BoxShadow(
                color: Colors.black.withOpacity(0.20),
                // blurRadius: 2,
                // spreadRadius: 0,
                // offset: const Offset(0, 0),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  Data,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Gap(6),
                Divider(thickness: 1, color: Colors.grey.withOpacity(0.40)),
                Gap(6),
                Text(
                  Data2,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Gap(6),
                Divider(thickness: 1, color: Colors.grey.withOpacity(0.40)),
                Gap(6),
                Text(
                  Data3,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Gap(6),
                Divider(thickness: 1, color: Colors.grey.withOpacity(0.40)),
                Gap(6),
                Text(
                  Data4,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
        Gap(20),
        Container(height:41 ,width:78 ,decoration: BoxDecoration(color: ThemeManager.primaryColor,borderRadius: BorderRadius.circular(6)),child: Column(
          mainAxisAlignment: MainAxisAlignment.center,children: [
            Text('Buy Now',style: Theme.of(context).textTheme.labelSmall?.copyWith(color: ThemeManager.white,fontWeight: FontWeight.w600),),
            Text('₦3,200',style: Theme.of(context).textTheme.labelSmall?.copyWith(color: ThemeManager.white,fontWeight: FontWeight.w600),),
          ],
        ),),
      ],
    );
  }
}
