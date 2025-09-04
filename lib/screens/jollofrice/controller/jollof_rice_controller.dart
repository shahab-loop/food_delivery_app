import 'package:get/get.dart';

class JollofRiceController extends GetxController {

  var selectedItem = "".obs;
  final List<String> items = [
    "Meat",
    "Vegetables",
    "Chicken",
  ];

  String image = "";

  @override
  void onInit() {
    super.onInit();
    final arg = Get.arguments;
    image = arg["image"];
  }}