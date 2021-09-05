import 'package:flutter/material.dart';
import 'package:nubank_ui_clone/shared/constants/app_colors.dart';
import 'package:nubank_ui_clone/shared/constants/app_fonts.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    this.isVisible,
    this.goHelp,
    this.goInvite,
    required this.mediaSize,
  }) : super(key: key);

  final void Function()? isVisible;
  final void Function()? goHelp;
  final void Function()? goInvite;
  final mediaSize;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      child: Container(
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
                        onPressed: () {},
                        icon: Icon(
                          Icons.visibility_outlined,
                          color: AppColors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.help_outline,
                          color: AppColors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.forward_to_inbox,
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                ],
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
      ),
      preferredSize: Size(mediaSize.width, 130),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(130);
}
