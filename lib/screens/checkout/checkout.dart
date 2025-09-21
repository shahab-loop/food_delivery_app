import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/common/base_scaffold.dart';
import 'package:food_delivery_app/core/res/theme/theme_manager.dart';
import 'package:food_delivery_app/screens/cart/controller/cart_controller.dart';
import 'package:food_delivery_app/screens/checkout/controller/checkout_controller.dart';
import 'package:food_delivery_app/screens/homescreen/homescreen.dart';
import 'package:food_delivery_app/screens/payment/card_details/card_details.dart';
import 'package:food_delivery_app/widgets/button_widget.dart';
import 'package:food_delivery_app/widgets/circleavatar_home.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class Checkout extends StatelessWidget {
  final CartController cartController = Get.put(CartController());
  final CheckoutController checkoutController = Get.put(CheckoutController());
  void showPaymentDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            decoration: BoxDecoration(color: ThemeManager.white,borderRadius: BorderRadius.circular(26)),
            padding: const EdgeInsets.all(20),
            width: 317,height: 313,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Card Details",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: ThemeManager.primaryColor,
                    ),
                  ),
                ),
                const SizedBox(height: 15),

                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Card Number\ 0000 0000 0000 0000",
                    // labelText: "Card Number",
                    fillColor: ThemeManager.primaryColor,
                    hintStyle: Theme.of(
                      context,
                    ).textTheme.bodyLarge?.copyWith(fontSize: 10),

                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ThemeManager.black),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ThemeManager.headerColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ThemeManager.primaryColor),
                    ),
                  ),
                ),
                const SizedBox(height: 15),

                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                          hintText: "Card Expiry\ MM/YY",
                          // labelText: "",
                          hintStyle: Theme.of(context).textTheme.bodyLarge
                              ?.copyWith(
                                fontSize: 10,
                                color: ThemeManager.headerColor,
                              ),
                          disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: ThemeManager.black),
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
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "123 \ CVV",
                          // labelText: "",
                          hintStyle: Theme.of(context).textTheme.bodyLarge
                              ?.copyWith(
                                fontSize: 10,
                                color: ThemeManager.headerColor,
                              ),
                          disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: ThemeManager.black),
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
                const SizedBox(height: 25),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ThemeManager.primaryColor,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 15,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 5,
                  ),
                  onPressed: () {
                    showThanksNotificationDialog(context);
                    // Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Payment Successful!")),
                    );
                  },
                  child: const Text(
                    "Pay Now",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void showThanksNotificationDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            decoration: BoxDecoration(color: ThemeManager.white,borderRadius: BorderRadius.circular(26)),
            padding: const EdgeInsets.all(20),
            width: 317,
            height: 358,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 217,
                  height: 192,
                  decoration: BoxDecoration(color: ThemeManager.primaryColor,borderRadius: BorderRadius.circular(26)),
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Payment',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'successull.',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Thank you',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(58),
                GestureDetector(onTap: () {
                  Get.to(Homescreen());
                },
                  child: Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SvgPicture.asset('assets/svgs/arrowback.svg'),
                      Text(
                        'back home',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 29,
          top: 95,
          right: 15,
          bottom: 27,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Checkout Page',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              const Gap(11),
              Divider(color: ThemeManager.white12, thickness: 4),
              const Gap(42),

              Row(
                children: [
                  Container(
                    height: 56,
                    width: 56,
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                  ),
                  const Gap(20),
                  Text(
                    'Your Order Details',
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const Gap(20),

              Container(
                height: 153,
                width: 317,
                decoration: BoxDecoration(
                  border: Border.all(color: ThemeManager.black, width: 1),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Product Name',
                                style: Theme.of(context).textTheme.labelSmall,
                              ),
                            ],
                          ),
                          Gap(30),
                          Column(
                            children: [
                              Text(
                                'Total',
                                style: Theme.of(context).textTheme.labelSmall,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    Positioned(
                      top: 32,
                      left: 10,
                      right: 10,
                      child: Container(height: 1, color: ThemeManager.black),
                    ),

                    Positioned(
                      top: 10,
                      bottom: 30,
                      left: 180,
                      child: Container(width: 1, color: ThemeManager.black),
                    ),
                    Positioned(
                      top: 120,
                      bottom: 0,
                      left: 0,
                      child: Container(
                        width: 317,
                        height: 30,
                        decoration: BoxDecoration(
                          color: ThemeManager.primaryColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Total',
                              style: Theme.of(
                                context,
                              ).textTheme.displayMedium?.copyWith(fontSize: 12),
                            ),
                            Text(
                              '9607',
                              style: Theme.of(
                                context,
                              ).textTheme.displayMedium?.copyWith(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Gap(9),
              CustomCheckBoxRow(
                text: 'Use Saved Address',
                isCheck: checkoutController.isChecked,
              ),
              Gap(20),
              Text(
                'Your Order Details',
                style: Theme.of(
                  context,
                ).textTheme.labelSmall?.copyWith(fontWeight: FontWeight.w900),
              ),
              Gap(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 39,
                    width: 149,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'House No.',
                        fillColor: Color(0xffF3F3F3),
                        hintStyle: Theme.of(
                          context,
                        ).textTheme.bodyLarge?.copyWith(fontSize: 10),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: ThemeManager.black),
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
                  Container(
                    height: 39,
                    width: 149,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Street Name',
                        fillColor: Color(0xffF3F3F3),
                        hintStyle: Theme.of(
                          context,
                        ).textTheme.bodyLarge?.copyWith(fontSize: 10),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: ThemeManager.black),
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
              Gap(9),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 39,
                    width: 149,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'City',
                        fillColor: Color(0xffF3F3F3),
                        hintStyle: Theme.of(
                          context,
                        ).textTheme.bodyLarge?.copyWith(fontSize: 10),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: ThemeManager.black),
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
                  Container(
                    height: 39,
                    width: 149,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Phone ',
                        fillColor: Color(0xffF3F3F3),
                        hintStyle: Theme.of(
                          context,
                        ).textTheme.bodyLarge?.copyWith(fontSize: 10),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: ThemeManager.black),
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
              Gap(9),
              Container(
                height: 90,
                width: 317,
                child: TextFormField(
                  maxLines: 3,
                  decoration: InputDecoration(
                    hintText: 'Special Notes for delivery. ',
                    fillColor: Color(0xffF3F3F3),
                    hintStyle: Theme.of(
                      context,
                    ).textTheme.bodyLarge?.copyWith(fontSize: 10),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ThemeManager.black),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ThemeManager.headerColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ThemeManager.primaryColor),
                    ),
                  ),
                ),
              ),
              Gap(11),
              GestureDetector(
                onTap: () => showPaymentDialog(context),
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
                      'Pay Now',
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

class CustomCheckBoxRow extends StatelessWidget {
  final RxBool isCheck;
  final String text;

  const CustomCheckBoxRow({
    super.key,
    required this.isCheck,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isCheck.value = !isCheck.value;
      },
      child: Obx(
        () => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 14,
              width: 14,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1),
                border: Border.all(color: Colors.black),
              ),
              child: Center(
                child: isCheck.value
                    ? Icon(Icons.check, color: Colors.black, size: 16)
                    : null,
              ),
            ),
            const Gap(16),
            Text(
              text,
              style: Theme.of(
                context,
              ).textTheme.labelSmall?.copyWith(fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }
}
