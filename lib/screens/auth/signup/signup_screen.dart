import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/core/res/theme/theme_manager.dart';
import 'package:food_delivery_app/screens/homescreen/homescreen.dart';
import 'package:food_delivery_app/widgets/button_widget.dart';
import 'package:food_delivery_app/widgets/circleavatar_widget.dart';
import 'package:food_delivery_app/widgets/textformfield_widget.dart';
import 'package:gap/gap.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class SignUpBottomSheet extends StatelessWidget {
  const SignUpBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        color: ThemeManager.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 20,
          bottom: MediaQuery.of(context).viewInsets.bottom + 20,
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               Container(height: 3,width: 49,color: ThemeManager.primaryColor,),
                 Gap(20),
                 Text(textAlign: TextAlign.center,
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color:ThemeManager.primaryColor,
                  ),
                ),
                const SizedBox(height: 29),
                TextFormFieldWidget(hintText: 'Name',),
                 SizedBox(height: 36),
                TextFormFieldWidget(hintText: 'Email',),
                 SizedBox(height: 36),
                TextFormFieldWidget(hintText: 'Password',),
                SizedBox(height: 36),
                TextFormFieldWidget(hintText: 'Confirm Password',),
                Gap(50),
                ButtonWidget(
                  text: 'Never Hungry Again!',
                  onTap: () {
                    Get.back();
                    Get.to(() => Homescreen());
                  },
                ),
                Gap(20),
                Text(
                  'or Sign up with',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(color: ThemeManager.lightGrey),
                ),
                const Gap(14),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
