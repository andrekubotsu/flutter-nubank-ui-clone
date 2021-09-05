import 'package:flutter/material.dart';
import 'package:nubank_ui_clone/shared/constants/app_colors.dart';
import 'package:nubank_ui_clone/shared/constants/app_fonts.dart';
import 'package:nubank_ui_clone/shared/widgets/custom_appbar_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final mediaSize = MediaQuery.of(context).size;

    return SafeArea(
      top: false,
      bottom: true,
      child: Scaffold(
        appBar: CustomAppBar(mediaSize: mediaSize),
        body: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Conta',
                    style: AppTextStyles.graphik17black600,
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: AppColors.black,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                children: [
                  Text(
                    'R\$ 999,99',
                    style: AppTextStyles.graphik24black600,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: AppColors.lightGrey,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.piano,
                        color: AppColors.black,
                      )),
                ),
                CircleAvatar(
                  backgroundColor: AppColors.lightGrey,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border_outlined,
                        color: AppColors.black,
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
