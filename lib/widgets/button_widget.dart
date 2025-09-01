import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const ButtonWidget({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 39,
        width: 217,
        decoration: BoxDecoration(
          color: Color(0xffFF785B),
          borderRadius: BorderRadius.circular(33),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
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
    );
  }
}
