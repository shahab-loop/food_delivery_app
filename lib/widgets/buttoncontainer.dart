import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/res/theme/theme_manager.dart';
import 'package:food_delivery_app/screens/cart/cart.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class ButtonContainer extends StatelessWidget {
  const ButtonContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 67,
      width: 322,
      decoration: BoxDecoration(
        color: ThemeManager.primaryColor,
        borderRadius: BorderRadius.circular(28),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Text('500', style: Theme.of(context).textTheme.titleLarge),
            Gap(30),
            Container(
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                border: Border.all(color: ThemeManager.white),
              ),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      print('Decrease');
                    },
                    child: Text(
                      '-',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  Gap(30),
                  Text(
                    '1',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Gap(30),
                  GestureDetector(
                    onTap: () {
                      print('Increase');
                    },
                    child: Text(
                      '+',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ],
              ),
            ),
            Gap(30),
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
          ],
        ),
      ),
    );
  }
}
