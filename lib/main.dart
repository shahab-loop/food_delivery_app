import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/res/theme/theme_manager.dart';
import 'package:food_delivery_app/screens/auth/login/login_screen.dart';
import 'package:food_delivery_app/screens/auth/reset_password/reset_password.dart';
import 'package:food_delivery_app/screens/auth/verification/verification.dart';
import 'package:food_delivery_app/screens/homescreen/homescreen.dart';
import 'package:food_delivery_app/screens/splash/splash_screen.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sizer/sizer.dart';

import 'screens/auth/forgot_password/forgot_password.dart';
import 'widgets/drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          title: 'Flutter Demo',
          theme: ThemeManager.darkTheme,
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
          builder: (context, child) {
            return MediaQuery(
              data: MediaQuery.of(
                context,
              ).copyWith(textScaler: TextScaler.linear(1.0)),
              child: child ?? Container(),
            );
          },
        );
      },
    );
  }
}
