import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/res/theme/theme_manager.dart';
import 'package:food_delivery_app/screens/jollofrice/controller/jollof_rice_controller.dart';
import 'package:food_delivery_app/widgets/buttoncontainer.dart';
import 'package:food_delivery_app/widgets/dropdownbutton.dart';
import 'package:food_delivery_app/widgets/items.dart';
import 'package:food_delivery_app/widgets/my_drawer.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class JollofRice extends StatelessWidget {
  const JollofRice({super.key});

  @override
  Widget build(BuildContext context) {
    final JollofRiceController controller = Get.put(JollofRiceController());
    log('image: ${controller.image}');
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
                child: Image.asset(
                  controller.image,
                  fit: BoxFit.fill,
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
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 145,
                            width: 119,
                            child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Description',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge
                                      ?.copyWith(
                                        color: ThemeManager.headerColor,fontWeight: FontWeight.w900
                                      ),
                                ),
                                Gap(10),
                                Text(
                                  'Our fried rice is made from the finest ingredients and veggies.Every single dish is made with fresh vegetables.Each plate is served with our signature chicken and a free',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(
                                        color: ThemeManager.headerColor,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Gap(40),
                          Container(
                            width: 120,
                            height: 145,
                            child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Latest Reviews',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(
                                        color: ThemeManager.black,
                                        fontWeight: FontWeight.w900,
                                      ),
                                ),
                                Divider(
                                  thickness: 1,
                                  color: ThemeManager.black,
                                ),
                                Row(mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: ThemeManager.primaryColor,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: ThemeManager.primaryColor,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: ThemeManager.primaryColor,
                                    ),
                                  ],
                                ),
                              Text('Sarah Ofilia',style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                color: ThemeManager.black,
                                fontWeight: FontWeight.w500,
                              ),),
                              Text('Great Meal but delivery was a bit late',style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                color: ThemeManager.black,
                                fontWeight: FontWeight.w100,fontSize: 7
                              ),),
                              Text('3mins ago',style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                color: ThemeManager.black,
                                fontWeight: FontWeight.w100,fontSize: 5
                              ),),
                                Divider(thickness: 1,color: ThemeManager.black,),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: ThemeManager.primaryColor,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: ThemeManager.primaryColor,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: ThemeManager.primaryColor,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: ThemeManager.primaryColor,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: ThemeManager.primaryColor,
                                    ),
                                  ],
                                ),
                                Text('James Atite',style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                  color: ThemeManager.black,
                                  fontWeight: FontWeight.w500,
                                ),),
                                Text('Awesome as always!!!',style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                    color: ThemeManager.black,
                                    fontWeight: FontWeight.w100,fontSize: 7
                                ),),
                                Text('10mins ago',style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                    color: ThemeManager.black,
                                    fontWeight: FontWeight.w100,fontSize: 5
                                ),),
                              ],
                            ),
                          ),
                          Gap(10),
                        ],
                      ),
                      Text(
                        'Ingredients',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(
                            color: ThemeManager.headerColor,fontWeight: FontWeight.w900
                        ),
                      ),
                      Gap(10),
                      Row(
                        children: [
                          Items(image: 'assets/images/rice.png'    ,height: 55, width: 70,),
                          Gap(10),
                          Items(image: 'assets/images/oliveoil.png'    ,height: 55, width: 70,),
                          Gap(10),
                          Items(image: 'assets/images/vegetables.png'    ,height: 55, width: 70,),
                          Gap(10),
                          Items(image: 'assets/images/carrot.png'    ,height: 55, width: 70,),
                        ],
                      ),
                      Text(
                        'Additions',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(
                            color: ThemeManager.headerColor,fontWeight: FontWeight.w900
                        ),
                      ),
                      Gap(10),
                      CustomDropdown(),
                      Gap(26),
                      ButtonContainer(),
                    ],
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
