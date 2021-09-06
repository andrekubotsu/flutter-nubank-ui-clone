import 'package:flutter/material.dart';
import 'package:nubank_ui_clone/shared/constants/app_colors.dart';
import 'package:nubank_ui_clone/shared/constants/app_fonts.dart';

class CustomPurpleButton extends StatelessWidget {
  const CustomPurpleButton({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(30),
        child: Ink(
          padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
          decoration: BoxDecoration(
              color: AppColors.purple, borderRadius: BorderRadius.circular(30)),
          child: Text(
            text,
            style: AppTextStyles.graphik16white500,
          ),
        ),
      ),
    );
  }
}
