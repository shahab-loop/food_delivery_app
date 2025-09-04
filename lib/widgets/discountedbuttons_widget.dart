import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/res/theme/theme_manager.dart';

class DiscountedButtonsWidget extends StatelessWidget {
final String first;
final String second;
final VoidCallback? onTap;

  const DiscountedButtonsWidget({super.key, required this.first, required this.second, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onTap,
      child: Row(
        children: [
          Icon(Icons.arrow_back_ios_new,color: ThemeManager.black,size: 10),
          RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.labelMedium,
              children: [
                TextSpan(text: first),
                TextSpan(
                  text: second,
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(color: ThemeManager.red),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
