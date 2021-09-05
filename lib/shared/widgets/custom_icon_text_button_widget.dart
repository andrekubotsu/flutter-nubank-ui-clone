import 'package:flutter/material.dart';
import 'package:nubank_ui_clone/shared/constants/app_colors.dart';
import 'package:nubank_ui_clone/shared/constants/app_fonts.dart';

class CustomIconTextButton extends StatelessWidget {
  const CustomIconTextButton({
    Key? key,
    required this.icon,
    required this.text,
    this.onPressed,
  }) : super(key: key);
  final IconData icon;
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 75,
          height: 75,
          decoration: BoxDecoration(
            color: AppColors.lightGrey,
            shape: BoxShape.circle,
          ),
          child: IconButton(
              onPressed: onPressed,
              icon: Icon(
                icon,
                color: AppColors.black,
              )),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.center,
          width: 85,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: AppTextStyles.graphik14black500,
          ),
        )
      ],
    );
  }
}
