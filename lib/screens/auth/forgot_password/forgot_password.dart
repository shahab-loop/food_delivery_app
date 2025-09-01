import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/base_scaffold.dart';
import 'package:food_delivery_app/core/res/theme/theme_manager.dart';
import 'package:food_delivery_app/screens/auth/verification/verification.dart';
import 'package:food_delivery_app/screens/homescreen/homescreen.dart';
import 'package:food_delivery_app/widgets/button_widget.dart';
import 'package:food_delivery_app/widgets/circleavatar_widget.dart';
import 'package:food_delivery_app/widgets/exit_button.dart';
import 'package:food_delivery_app/widgets/textformfield_widget.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Stack(
            children: [
              Container(
                height: 314,
                width: 317,
                decoration: BoxDecoration(
                  color: ThemeManager.white,
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Forgot \nPassword',
                      style: Theme.of(context).textTheme.displayLarge,
                      textAlign: TextAlign.center,
                    ),
                    const Gap(20),
                    TextFormFieldWidget(hintText: 'Enter your account email'),
                    const Gap(20),
                    ButtonWidget(
                      text: 'Reset Password',
                      onTap: () {
                        Get.to(() => Verification());
                      },
                    ),
                  ],
                ),
              ),
              const Positioned(
                top: 25,
                right: 25,
                child: ExitButton(
                  assetName: 'assets/images/exit.png',
                  color: ThemeManager.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
