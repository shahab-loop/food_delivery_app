import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/res/theme/theme_manager.dart';

class Items extends StatelessWidget {
  final String image;
  final double height;
  final double width;

  final VoidCallback? onTap;
  const Items({
    super.key,
    required this.image,
    this.onTap,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 180,
      // width: 135,
      child: GestureDetector(
        onTap:onTap,
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: ThemeManager.black,
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
          ),

        ),
      ),
    );
  }
}
