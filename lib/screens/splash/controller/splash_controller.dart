import 'package:food_delivery_app/screens/auth/login/login_screen.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => LoginScreen());
    });
  }
}