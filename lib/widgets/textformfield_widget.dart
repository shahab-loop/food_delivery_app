import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/res/theme/theme_manager.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String hintText;
  const TextFormFieldWidget({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 50.px,width: 277.px,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          fillColor: Color(0xffF3F3F3),
          hintStyle: Theme.of(context).textTheme.titleMedium,
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(31),borderSide: BorderSide(color: ThemeManager.black)
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(31),borderSide: BorderSide(color: ThemeManager.headerColor)
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(31),borderSide: BorderSide(color: ThemeManager.primaryColor)
          ),
        ),
      ),
    );
  }
}
