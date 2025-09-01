import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class ExitButton extends StatelessWidget {
  final String assetName;
  final Color color;

  const ExitButton({
    super.key,
    required this.assetName,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () {
      Get.toNamed('/login_screen');
    },
      child: Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
          image: DecorationImage(
            image: AssetImage(assetName),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
