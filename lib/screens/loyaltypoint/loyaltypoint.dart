import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/base_scaffold.dart';
import 'package:food_delivery_app/core/res/theme/theme_manager.dart';
import 'package:food_delivery_app/widgets/button_widget.dart';
import 'package:food_delivery_app/widgets/circleavatar_home.dart';
import 'package:gap/gap.dart';

class LoyaltyPoint extends StatelessWidget {
  const LoyaltyPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text('Loyalty Points',style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w900),),
              ),
              Gap(11),
              Divider(color: ThemeManager.white12, thickness: 4),
              Gap(42),
              Row(
                children: [
                  SizedBox(height:168 ,width:168 ,child: Image.asset('assets/images/medal.png'),),
                  Gap(50),
                  Text(
                    'Shahab \nKhan',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ],
              ),
              Gap(40),
              Text('509 Points',style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w900),),
              Gap(30),
              Text('Convert Points to Purchase Voucher Code.',style: Theme.of(context).textTheme.displayLarge),
              Gap(15),
              Text('You need up to 1000points to get 1000 OFF your order.',style: Theme.of(context).textTheme.displayLarge,textAlign: TextAlign.center,),
              Gap(15),
              Text('Order today to get more points. ',style: Theme.of(context).textTheme.displayLarge),
              Gap(60),
              ButtonWidget(text: 'Convert ',),
              Gap(30),
              Divider(color: ThemeManager.white12, thickness: 4),
              Gap(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatarHome( svgPath: 'assets/svgs/profile.svg'),
                  Gap(30),
                  CircleAvatarHome( imagePath: Icons.home,),
                  Gap(30),
                  CircleAvatarHome( svgPath: 'assets/svgs/greybucket.svg'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
