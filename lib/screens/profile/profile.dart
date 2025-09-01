import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/common/base_scaffold.dart';
import 'package:food_delivery_app/core/res/theme/theme_manager.dart';
import 'package:food_delivery_app/widgets/circleavatar_home.dart';
import 'package:gap/gap.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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
                child: Text(
                  'Profile',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
              Gap(11),
              Divider(color: ThemeManager.white12, thickness: 4),
              Gap(42),
              Row(
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundColor: ThemeManager.white,
                    backgroundImage: AssetImage('assets/images/shahab.jpg'),
                  ),
                  Gap(80),
                  Text(
                    'Shahab \nKhan',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ],
              ),
              Gap(40),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                        fillColor: Color(0xffF3F3F3),
                        hintStyle: Theme.of(context).textTheme.titleMedium,
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(31),
                          borderSide: BorderSide(color: ThemeManager.black),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(31),
                          borderSide: BorderSide(
                            color: ThemeManager.headerColor,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(31),
                          borderSide: BorderSide(
                            color: ThemeManager.primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Gap(7),
                  SizedBox(
                    height: 16,
                    width: 15,
                    child: SvgPicture.asset(
                      'assets/svgs/editboard.svg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Icon(Icons.edit,color: ThemeManager.headerColor,size: 25)
                ],
              ),
              Gap(30),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Date Of Birth:',
                        fillColor: Color(0xffF3F3F3),
                        hintStyle: Theme.of(context).textTheme.titleMedium,
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(31),
                          borderSide: BorderSide(color: ThemeManager.black),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(31),
                          borderSide: BorderSide(
                            color: ThemeManager.headerColor,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(31),
                          borderSide: BorderSide(
                            color: ThemeManager.primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Gap(7),
                  SizedBox(
                    height: 16,
                    width: 15,
                    child: SvgPicture.asset(
                      'assets/svgs/editboard.svg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Icon(Icons.edit,color: ThemeManager.headerColor,size: 25)
                ],
              ),
              Gap(30),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      maxLines: 5,
                      decoration: InputDecoration(
                        hintText: 'Address',
                        fillColor: Color(0xffF3F3F3),
                        hintStyle: Theme.of(context).textTheme.titleMedium,
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(31),
                          borderSide: BorderSide(color: ThemeManager.black),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(31),
                          borderSide: BorderSide(
                            color: ThemeManager.headerColor,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(31),
                          borderSide: BorderSide(
                            color: ThemeManager.primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Gap(7),
                  SizedBox(
                    height: 16,
                    width: 15,
                    child: SvgPicture.asset(
                      'assets/svgs/edit.svg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Icon(Icons.edit,color: ThemeManager.headerColor,size: 25)
                ],
              ),
              Gap(35),
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
