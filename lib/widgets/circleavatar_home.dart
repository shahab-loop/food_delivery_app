import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/core/res/theme/theme_manager.dart';

class CircleAvatarHome extends StatelessWidget {
  final String? svgPath;   // for svg
  final IconData? imagePath; // for image

  const CircleAvatarHome({
    super.key,
    this.svgPath,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Image tapped');
      },
      child: Container(
        height: 37,
        width: 38,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: ThemeManager.white12, width: 2),
        ),
        child: Padding(
          padding: const EdgeInsets.all(6),
          child: _buildIcon(),
        ),
      ),
    );
  }

  Widget _buildIcon() {
    if (svgPath != null) {
      return SvgPicture.asset(svgPath!);
    } else if (imagePath != null) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Icon(imagePath!,color: ThemeManager.borderColor,),
      );
    } else {
      return const Icon(Icons.image_not_supported); // fallback
    }
  }
}
