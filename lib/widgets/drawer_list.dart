import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/core/res/theme/theme_manager.dart';

class DrawerTile extends StatelessWidget {
  final String iconpath;
  final String data;
  const DrawerTile({super.key, required this.iconpath, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 242,
      decoration: BoxDecoration(color: ThemeManager.primaryColor),
      child: Row(
        children: [
          SizedBox(height: 22, width: 20, child: SvgPicture.asset(iconpath)),
          SizedBox(width: 3),
          Text(data, style: Theme.of(context).textTheme.displayMedium),
        ],
      ),
    );
  }
}
