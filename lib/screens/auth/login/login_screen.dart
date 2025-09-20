import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/base_scaffold.dart';
import 'package:food_delivery_app/core/res/theme/theme_manager.dart';
import 'package:food_delivery_app/screens/auth/forgot_password/forgot_password.dart';
import 'package:food_delivery_app/screens/auth/signup/signup_screen.dart';
import 'package:food_delivery_app/screens/homescreen/homescreen.dart';
import 'package:food_delivery_app/widgets/button_widget.dart';
import 'package:food_delivery_app/widgets/circleavatar_widget.dart';
import 'package:food_delivery_app/widgets/textformfield_widget.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: SafeArea(
        child: Stack(
          children: [
            /// Main Content
            SingleChildScrollView(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 134,
                    width: 227,
                    child: Image.asset('assets/images/mock.png'),
                  ),
                  const Gap(28),
                  TextFormFieldWidget(hintText: 'Email'),
                  SizedBox(height: 3.h),
                  TextFormFieldWidget(hintText: 'Password'),
                  const Gap(27),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => ForgotPassword());
                    },
                    child: Text(
                      'Forgot Password?',
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                  const Gap(40),
                  ButtonWidget(
                    text: 'Eat Away!',
                    onTap: () {
                      Get.to(() => Homescreen());
                    },
                  ),
                  const Gap(59),
                  Text(
                    'Sign in with',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  const Gap(30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatarWidget(
                        assetName: 'assets/images/FB.png',
                        color: ThemeManager.white,
                      ),
                      const Gap(20),
                      CircleAvatarWidget(
                        assetName: 'assets/images/Gmail.png',
                        color: ThemeManager.white,
                      ),
                    ],
                  ),
                  const Gap(100),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
                    ),
                    builder: (context) => const SignUpBottomSheet(),
                  );
                },
                child: Container(
                  width: 330,
                  height: 68,
                  decoration: const BoxDecoration(
                    color: ThemeManager.primaryColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(33),
                      topRight: Radius.circular(33),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Icon(Icons.keyboard_arrow_up, color: Colors.white),
                      Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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
