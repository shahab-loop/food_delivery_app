import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/core/res/theme/theme_manager.dart';
import 'package:food_delivery_app/widgets/button_widget.dart';
import 'package:gap/gap.dart';

class WishlistWidget extends StatelessWidget {
  final String image;
  final String menue;

  const WishlistWidget({super.key, required this.image, required this.menue});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Main Dishes');
      },
      child: SizedBox(
         height: 600,
        width: 350,
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            children: [
              Container(
                width: 330,
                // height: 367,
                decoration: BoxDecoration(
                  color: ThemeManager.white12,
                  borderRadius: BorderRadius.circular(26),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 244,
                      width: 341,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(image),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(26),
                          topRight: Radius.circular(26),
                        ),
                      ),
                    ),

                    Gap(16),
                    Row(
                      children: [
                        Container(
                           height: 52,
                          width: 145,
                          decoration: BoxDecoration(
                            color: ThemeManager.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(14),
                              bottomRight: Radius.circular(14),
                            ),
                          ),
                          child: Column(
                            children: [
                              Text(
                                menue,
                                style: Theme.of(context).textTheme.displaySmall,
                              ),
                              Gap(10),
                              Text(
                                'With COKE',
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 80,),
                        Container(
                          height: 52,
                          width: 68,
                          decoration: BoxDecoration(
                            color: ThemeManager.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(14),
                              bottomLeft: Radius.circular(14),
                            ),
                          ),
                          child: Column(
                            children: [
                              Container(height:24 ,width:24 ,child: Image.asset('assets/images/favourite.png',)),
                              Gap(10),
                              Text(
                                '128 people \nlike this',
                                style: Theme.of(context).textTheme.titleSmall
                                    ?.copyWith(
                                      color: ThemeManager.black,
                                      fontSize: 8,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Gap(15),
                    Container(
                      height: 18,
                      width: 62,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        border: Border.all(color: ThemeManager.black),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          'Best Seller',
                          style: Theme.of(
                            context,
                          ).textTheme.labelSmall?.copyWith(fontSize: 8),
                        ),
                      ),
                    ),
                    Gap(14),
                    Text(
                      '₦1000',
                      style: Theme.of(
                        context,
                      ).textTheme.headlineLarge?.copyWith(fontSize: 21),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }
}
