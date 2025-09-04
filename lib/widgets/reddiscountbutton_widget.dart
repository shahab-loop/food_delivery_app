import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/core/res/theme/theme_manager.dart';

class RedDiscountButtonWidget extends StatelessWidget {
  final String image;

  final VoidCallback? onTap;
  const RedDiscountButtonWidget({super.key, required this.image, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 250,
          color: Colors.transparent,
        ),
        Positioned(
          bottom: 0,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              height: 231,
              width: 310,
              decoration: BoxDecoration(
                color: ThemeManager.black,
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
        Positioned(
            right: 10,
            child: SvgPicture.asset('assets/svgs/discount.svg',height:60 ,width:65 )),
      ],
    );
  }
}
