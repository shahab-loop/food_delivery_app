import 'package:flutter/material.dart';

class DiscountedOffersWidget extends StatelessWidget {
 final String image;
 final VoidCallback? onTap;

  const DiscountedOffersWidget({super.key, required this.image, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onTap,
        child: Image.asset(image,height:37.96 ,width:87.28 ,));
  }
}
