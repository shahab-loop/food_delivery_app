import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/res/theme/theme_manager.dart';

class MenuelistWidget extends StatelessWidget {
  final String image;
  final String menue;
  final String rating;
  final String review;
  final String price;

  const MenuelistWidget({
    super.key,
    required this.image,
    required this.menue,
    required this.rating,
    required this.review,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Main Dishes');
      },
      child: SizedBox(
        height: 345,
        width: 210,
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            children: [
              Container(
                width: 318,
                height: 210,
                decoration: BoxDecoration(
                  color: ThemeManager.white,
                  borderRadius: BorderRadius.circular(26),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Row(
                children: [
                  Text(menue, style: Theme.of(context).textTheme.bodySmall),
                  Spacer(),
                  Image.asset(
                    'assets/images/free_drink.png',
                    height: 53,
                    width: 105,
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.star, color: ThemeManager.primaryColor,size: 17,),
                  SizedBox(width: 2),
                  Text(rating, style: Theme.of(context).textTheme.bodyMedium),
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.titleMedium,
                      children: [
                        TextSpan(text: review),
                        TextSpan(text: ' - Starts from '),
                        TextSpan(
                          text: price,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
