// login_screen.dart
import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/base_scaffold.dart';
import 'package:food_delivery_app/core/res/theme/theme_manager.dart';
import 'package:food_delivery_app/screens/homescreen/homescreen.dart';
import 'package:food_delivery_app/widgets/button_widget.dart';
import 'package:food_delivery_app/widgets/circleavatar_widget.dart';
import 'package:food_delivery_app/widgets/textformfield_widget.dart';
import 'package:gap/gap.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sizer/sizer.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

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
                const Gap(3),
                Text('Your password must be at-least 8 characters long',style: Theme.of(context).textTheme.displaySmall,textAlign:TextAlign.center ,),
                const Gap(61),
                TextFormFieldWidget(hintText: 'Enter new password'),
                SizedBox(height: 4.h),
                TextFormFieldWidget(hintText: 'Reconfirm new password'),
                const Gap(131),
                ButtonWidget(text: 'Eat Away', onTap: (){
                  Get.to(() => Homescreen());
                },),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
