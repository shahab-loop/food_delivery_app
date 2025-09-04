import 'package:get/get.dart';

class JollofRiceController extends GetxController {
  var selectedItem = "".obs;
  final List<String> items = ["Meat", "Vegetables", "Chicken"];

  String image = "";
  RxInt count = 1.obs;
  final int pricePerItem = 500;
  RxInt totalPrice = 500.obs;

  @override
  void onInit() {
    super.onInit();
    final arg = Get.arguments;
    image = arg["image"];
  }

  void increment() {
    count++;
    calculatePrice();
  }

  void decrement() {
    if (count > 1) {
      count--;
      calculatePrice();
    }
  }

  void calculatePrice() {
    totalPrice.value = count.value * pricePerItem;
  }
}
