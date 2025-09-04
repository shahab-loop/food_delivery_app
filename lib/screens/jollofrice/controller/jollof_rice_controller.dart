import 'package:get/get.dart';

class DropdownController extends GetxController {

  var selectedItem = "".obs;

  final List<String> items = [
    "Meat",
    "Vegetables",
    "Chicken",
  ];
}