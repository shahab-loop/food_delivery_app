import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/res/theme/theme_manager.dart';
import 'package:gap/gap.dart';

class MainDishesWidget extends StatelessWidget {
  final String image;
  final String text;
  final void Function()? onTap;
  const MainDishesWidget({
    super.key,
    required this.image,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1),
      child: SizedBox(
        // height: 180,
        width: 135,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 130,
              width: 130,
              decoration: BoxDecoration(
                color: ThemeManager.black,
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Gap(6),
            Text(text, style: Theme.of(context).textTheme.displaySmall),
            Gap(15),
            GestureDetector(
              onTap: onTap,
              child: Container(
                height: 30,
                width: 79,
                decoration: BoxDecoration(
                  color: Color(0xffFF785B),
                  borderRadius: BorderRadius.circular(33),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Buy Now',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'avenir',
                      color: Color(0xffFFFFFF),
                      fontSize: 14,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
