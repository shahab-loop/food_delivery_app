import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/core/res/theme/theme_manager.dart';
import 'package:gap/gap.dart';

class DrawerTile extends StatelessWidget {
  final String iconpath;
  final String data;
  final void Function()? onTap;
  const DrawerTile({super.key, required this.iconpath, required this.data, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onTap,
      child: Container(
        width: 242,
        decoration: BoxDecoration(color: ThemeManager.primaryColor),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(height: 22, width: 20, child: SvgPicture.asset(iconpath,color:ThemeManager.white,)),
                Gap(30),
                Text(data, style: Theme.of(context).textTheme.displayMedium),
              ],
            ),
            Divider(color: ThemeManager.white,)
          ],
        ),
      ),
    );
  }
}
