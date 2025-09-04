import 'package:get/get.dart';

class CartController extends GetxController {
  var qty1 = 1.obs;
  var qty2 = 1.obs;

  final int price1 = 2000;
  final int price2 = 5700;

  int get total => qty1.value * price1 + qty2.value * price2;
  int get vat => (total * 0.05).round();

  void increaseQty1() => qty1.value++;
  void decreaseQty1() {
    if (qty1.value > 1) qty1.value--;
  }

  void increaseQty2() => qty2.value++;
  void decreaseQty2() {
    if (qty2.value > 1) qty2.value--;
  }
}
