import 'package:flutter/material.dart';
import 'package:nubank_ui_clone/shared/constants/app_colors.dart';
import 'package:nubank_ui_clone/shared/constants/app_fonts.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    this.toggleVisibility,
    this.goHelp,
    this.goInvite,
    required this.mediaSize,
    required this.isVisible,
  }) : super(key: key);

  final void Function()? toggleVisibility;
  final void Function()? goHelp;
  final void Function()? goInvite;
  final mediaSize;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.purple,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 40, 15, 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(),
                    Icon(
                      Icons.person_outline_sharp,
                      color: AppColors.white,
                    )
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: toggleVisibility,
                      icon: isVisible
                          ? Icon(
                              Icons.visibility_outlined,
                              color: AppColors.white,
                            )
                          : Icon(
                              Icons.visibility_off_outlined,
                              color: AppColors.white,
                            ),
                    ),
                    IconButton(
                      onPressed: goHelp,
                      icon: Icon(
                        Icons.help_outline,
                        color: AppColors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: goInvite,
                      icon: Icon(
                        Icons.forward_to_inbox,
                        color: AppColors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'Olá, Andre',
                    style: AppTextStyles.graphik16white500,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
