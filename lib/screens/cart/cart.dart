import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/base_scaffold.dart';
import 'package:food_delivery_app/core/res/theme/theme_manager.dart';
import 'package:food_delivery_app/screens/cart/controller/cart_controller.dart';
import 'package:food_delivery_app/screens/homescreen/homescreen.dart';
import 'package:food_delivery_app/widgets/circleavatar_home.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class Cart extends StatelessWidget {
  final CartController cartController = Get.put(CartController());

  Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Your Shopping Cart',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              Gap(11),
              Divider(color: ThemeManager.white12, thickness: 4),
              Gap(42),
              Container(
                height: 390,
                width: 340,
                child: Column(
                  children: [
                    Text(
                      'Spaghetti Rigatoni',
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            '-',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.labelSmall
                                ?.copyWith(fontWeight: FontWeight.w900),
                          ),
                        ),
                        Gap(30),
                        Container(
                          height: 24,
                          width: 24,
                          color: ThemeManager.greyColor,
                          child: Text(
                            '1',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.labelSmall
                                ?.copyWith(fontWeight: FontWeight.w900),
                          ),
                        ),
                        Gap(30),
                        GestureDetector(
                          onTap: () {
                            print('Increase');
                          },
                          child: Text(
                            '+',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.labelSmall
                                ?.copyWith(fontWeight: FontWeight.w900),
                          ),
                        ),
                        Gap(70),
                        Text(
                          '₦2000',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.labelSmall
                              ?.copyWith(fontWeight: FontWeight.w900),
                        ),
                        Gap(10),
                        Text(
                          'x',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.labelSmall
                              ?.copyWith(
                                fontWeight: FontWeight.w900,
                                color: ThemeManager.primaryColor,
                              ),
                        ),
                      ],
                    ),
                    Gap(78),
                    Text(
                      'Peppered Stew',
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            print('Decrease');
                          },
                          child: Text(
                            '-',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.labelSmall
                                ?.copyWith(fontWeight: FontWeight.w900),
                          ),
                        ),
                        Gap(30),
                        Container(
                          height: 24,
                          width: 24,
                          color: ThemeManager.greyColor,
                          child: Text(
                            '1',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.labelSmall
                                ?.copyWith(fontWeight: FontWeight.w900),
                          ),
                        ),
                        Gap(30),
                        GestureDetector(
                          onTap: () {
                            print('Increase');
                          },
                          child: Text(
                            '+',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.labelSmall
                                ?.copyWith(fontWeight: FontWeight.w900),
                          ),
                        ),
                        Gap(70),
                        Text(
                          '₦5700',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.labelSmall
                              ?.copyWith(fontWeight: FontWeight.w900),
                        ),
                        Gap(10),
                        Text(
                          'x',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.labelSmall
                              ?.copyWith(
                                fontWeight: FontWeight.w900,
                                color: ThemeManager.primaryColor,
                              ),
                        ),
                      ],
                    ),
                    Gap(29),
                    Divider(color: ThemeManager.headerColor, thickness: 1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Purchase Total ',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        Gap(100),
                        Text(
                          'x7700',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                      ],
                    ),
                    Gap(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Voucher Code?',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.displayLarge
                              ?.copyWith(
                                fontWeight: FontWeight.w900,
                                color: ThemeManager.primaryColor,
                              ),
                        ),
                        Gap(69),
                        Container(
                          height: 29,
                          width: 75,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Enter Here',
                              fillColor: Color(0xffF3F3F3),
                              hintStyle: Theme.of(
                                context,
                              ).textTheme.bodyLarge?.copyWith(fontSize: 10),
                              disabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: ThemeManager.black,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: ThemeManager.headerColor,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: ThemeManager.primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Gap(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Vat 5% ',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        Gap(100),
                        Text(
                          'x ₦385',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                      ],
                    ),
                    Gap(20),
                    Container(
                      height: 30,
                      decoration: BoxDecoration(
                        color: ThemeManager.primaryColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(6),
                          bottomRight: Radius.circular(6),
                        ),
                      ),
                       child:Padding(
                         padding: const EdgeInsets.only(right: 1),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.end,
                           children: [
                             Text(
                               'Purchase Total ',
                               textAlign: TextAlign.center,
                               style: Theme.of(context).textTheme.displayLarge?.copyWith(color: ThemeManager.white),
                             ),
                             Gap(100),
                             Text(
                               'x7700',
                               textAlign: TextAlign.center,
                               style: Theme.of(context).textTheme.displayLarge?.copyWith(color: ThemeManager.white),
                             ),
                           ],
                         ),
                       ),
                    ),
                  ],
                ),
              ),
              GestureDetector(onTap: () {
                Get.to(() => Homescreen());
              },
                child: Container(
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back_outlined, color: ThemeManager.black),
                     Gap(10),
                      Text(
                        'Continue Shopping',
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.displaySmall
                      ),
                    ],
                  ),
                ),
              ),
            Gap(20),
            GestureDetector(
              onTap: () {
                Get.to(() => Cart());
              },
              child: Container(
                height: 52,
                width: 113,
                decoration: BoxDecoration(
                  color: Color(0xffFF785B),
                  borderRadius: BorderRadius.circular(33),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Checkout',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'avenir',
                      color: Color(0xffFFFFFF),
                      fontSize: 14,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ),
            ),
              Gap(30),
              Divider(color: ThemeManager.white12, thickness: 4),
              Gap(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatarHome(svgPath: 'assets/svgs/profile.svg'),
                  Gap(30),
                  CircleAvatarHome(imagePath: Icons.home),
                  Gap(30),
                  CircleAvatarHome(svgPath: 'assets/svgs/greybucket.svg'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
