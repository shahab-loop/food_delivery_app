// login_screen.dart
import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/base_scaffold.dart';
import 'package:food_delivery_app/core/res/theme/theme_manager.dart';
import 'package:food_delivery_app/screens/auth/reset_password/reset_password.dart';
import 'package:food_delivery_app/screens/auth/verification/verification.dart';
import 'package:food_delivery_app/screens/homescreen/homescreen.dart';
import 'package:food_delivery_app/widgets/button_widget.dart';
import 'package:food_delivery_app/widgets/circleavatar_widget.dart';
import 'package:food_delivery_app/widgets/textformfield_widget.dart';
import 'package:gap/gap.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
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
                GestureDetector(onTap: () {
                  // Get.toNamed('/forgot_password');
                  Get.to(() => Verification());
                },
                  child: Text(
                    'Forgot Password',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ),
                const Gap(40),
                ButtonWidget(text: 'Eat Away', onTap: (){
                  Get.to(() => Homescreen());
                },),
                const Gap(59),
                Text(
                  'Sign in With',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                const Gap(30),
              Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                CircleAvatarWidget(assetName: 'assets/images/FB.png', color: ThemeManager.white,),
                const Gap(20),
                CircleAvatarWidget(assetName: 'assets/images/Gmail.png', color: ThemeManager.white,),
                ],),
              Container()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
