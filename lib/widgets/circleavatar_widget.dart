import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class CircleAvatarWidget extends StatelessWidget {
  final String assetName;
  final Color color;
  // final double height;
  // final double width;

  const CircleAvatarWidget({
    super.key,
    required this.assetName,
    required this.color,
    // required this.height, required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () {
    return print('Image tapped');
    },
      child: Container(
        height: 35,
        width: 35,
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
