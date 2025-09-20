import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/res/theme/theme_manager.dart';
import 'package:food_delivery_app/screens/homescreen/homescreen.dart';
import 'package:food_delivery_app/screens/splash/controller/splash_controller.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    final SplashController controller = Get.put(SplashController());
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color(0xffFFFFFF), Color(0xff040000)],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(52.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 99,
                    width: 168,
                    child: Image.asset('assets/images/mock.png'),
                  ),
                  const Gap(200),
                  Text(
                    "Welcome to WaraChow",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      fontSize: 24,
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const Gap(10),
                  Text(
                    "Order the best meals in Lagos and have them delivered to your doorstep in little or no time. Doesn’t that sound delicious???",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      fontSize: 16,
                      height: 1.3,
                      color: ThemeManager.white,
                    ),
                  ),
                  const Gap(34),
                  GestureDetector(onTap: () {
                    Get.to(() => Homescreen());
                  },
                    child: Container(
                      width: 227.px,
                      height: 47.px,
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(34),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.arrow_forward,
                          color: Color(0xff6A6A6A),
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
