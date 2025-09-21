import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/base_scaffold.dart';
import 'package:food_delivery_app/core/res/theme/theme_manager.dart';
import 'package:food_delivery_app/screens/cart/controller/cart_controller.dart';
import 'package:food_delivery_app/screens/checkout/checkout.dart';
import 'package:food_delivery_app/screens/homescreen/homescreen.dart';
import 'package:food_delivery_app/screens/profile/profile.dart';
import 'package:food_delivery_app/widgets/circleavatar_home.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class Cart extends StatelessWidget {
  final CartController cartController = Get.put(CartController());

  Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: Padding(
        padding: EdgeInsets.only(left:25 ,top:95 ,right:10 ,bottom:27 ),
        child: SingleChildScrollView(
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
              SizedBox(
                // height: 390,
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            cartController.decreaseQty1();
                          },
                          child: SizedBox(
                            height: 24,
                            width: 24,
                            child: Center(
                              child: Text(
                                '-',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.labelSmall
                                    ?.copyWith(fontWeight: FontWeight.w900),
                              ),
                            ),
                          ),
                        ),
                        Gap(30),
                        Obx(
                          () => Container(
                            height: 24,
                            width: 24,
                            color: ThemeManager.greyColor,
                            child: Center(
                              child: Text(
                                cartController.qty1.toString(),
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.labelSmall
                                    ?.copyWith(fontWeight: FontWeight.w900),
                              ),
                            ),
                          ),
                        ),
                        Gap(30),
                        GestureDetector(
                          onTap: () {
                            cartController.increaseQty1();
                          },
                          child: SizedBox(
                            height: 24,
                            width: 24,
                            child: Center(
                              child: Text(
                                '+',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.labelSmall
                                    ?.copyWith(fontWeight: FontWeight.w900),
                              ),
                            ),
                          ),
                        ),
                        Gap(70),
                        Obx(
                          () => Text(
                            '₦${2000 * cartController.qty1.value}', // reactive price
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.labelSmall
                                ?.copyWith(fontWeight: FontWeight.w900),
                          ),
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
                            cartController.decreaseQty2();
                            print(cartController.qty2.value);
                          },
                          child: SizedBox(
                            height: 30,
                            width: 30,
                            child: Text(
                              '-',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.labelSmall
                                  ?.copyWith(fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                        Gap(30),
                        Obx(
                          () => Container(
                            height: 24,
                            width: 24,
                            color: ThemeManager.greyColor,
                            child: Center(
                              child: Text(
                                cartController.qty2.toString(),
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.labelSmall
                                    ?.copyWith(fontWeight: FontWeight.w900),
                              ),
                            ),
                          ),
                        ),
                        Gap(30),
                        GestureDetector(
                          onTap: () {
                            cartController.increaseQty2();
                            print(cartController.qty2.value);
                          },
                          child: SizedBox(
                            height: 30,
                            width: 30,
                            child: Text(
                              '+',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.labelSmall
                                  ?.copyWith(fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                        Gap(70),
                        Obx(
                          () => Text(
                            '₦${5700 * cartController.qty2.value}',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.labelSmall
                                ?.copyWith(fontWeight: FontWeight.w900),
                          ),
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
                          "₦${cartController.total}",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                      ],
                    ),
                    Gap(34),
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
                    Gap(15),
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
                    Gap(30),
                    Container(
                      height: 30,
                      decoration: BoxDecoration(
                        color: ThemeManager.primaryColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(6),
                          bottomRight: Radius.circular(6),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Purchase Total ',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.displayLarge
                                  ?.copyWith(color: ThemeManager.white),
                            ),
                            Gap(100),
                            Obx(
                              () => Text(
                                textAlign: TextAlign.center,
                                "₦${cartController.total}",
                                style: Theme.of(context)
                                    .textTheme
                                    .displayLarge
                                    ?.copyWith(color: ThemeManager.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Gap(50),
              GestureDetector(
                onTap: () {
                  Get.to(() => Homescreen());
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_outlined,
                      color: ThemeManager.primaryColor,
                    ),
                    Gap(10),
                    Text(
                      'Continue Shopping',
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.displaySmall
                          ?.copyWith(color: ThemeManager.primaryColor),
                    ),
                  ],
                ),
              ),
              Gap(20),
              GestureDetector(
                onTap: () {
                  Get.to(() => Checkout());
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
                  ),],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
