import 'package:flutter/material.dart';
import 'package:nubank_ui_clone/shared/constants/app_colors.dart';
import 'package:nubank_ui_clone/shared/constants/app_fonts.dart';
import 'package:nubank_ui_clone/shared/widgets/custom_appbar_widget.dart';
import 'package:nubank_ui_clone/shared/widgets/custom_icon_text_button_widget.dart';

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
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
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
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Text(
                    'R\$ 999,99',
                    style: AppTextStyles.graphik24black600,
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomIconTextButton(
                      //TODO: icon pix from material design, it exists but not in flutter yet
                      icon: Icons.open_with_outlined,
                      text: 'Pix',
                    ),
                    CustomIconTextButton(
                      icon: Icons.payment_outlined,
                      text: 'Pagar',
                    ),
                    CustomIconTextButton(
                      icon: Icons.attach_money_outlined,
                      text: 'Transferir',
                    ),
                    CustomIconTextButton(
                      icon: Icons.atm_outlined,
                      text: 'Depositar',
                    ),
                    CustomIconTextButton(
                      icon: Icons.payments_outlined,
                      text: 'Pegar emprestado',
                    ),
                    CustomIconTextButton(
                      icon: Icons.phone_android_outlined,
                      text: 'Recarga de celular',
                    ),
                    CustomIconTextButton(
                      icon: Icons.monetization_on_outlined,
                      text: 'Cobrar',
                    ),
                    CustomIconTextButton(
                      icon: Icons.favorite_border,
                      text: 'Doação',
                    ),
                    CustomIconTextButton(
                      icon: Icons.help_outline,
                      text: 'Encontrar Atalhos',
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Container(
                padding: const EdgeInsets.all(20),
                width: mediaSize.width,
                decoration: BoxDecoration(
                  color: AppColors.lightGrey,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Icon(Icons.credit_score_outlined),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Meus cartões',
                      style: AppTextStyles.graphik14black500,
                    )
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      width: 300,
                      decoration: BoxDecoration(
                        color: AppColors.lightGrey,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: RichText(
                        text: TextSpan(
                            text: 'Você tem ',
                            style: AppTextStyles.graphik14black400,
                            children: [
                              TextSpan(
                                text: 'R\$ 100.000,00',
                                style: AppTextStyles.graphik14purple400,
                              ),
                              TextSpan(
                                  text: ' disponíveis para empréstimo',
                                  style: AppTextStyles.graphik14black400)
                            ]),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      width: 300,
                      decoration: BoxDecoration(
                        color: AppColors.lightGrey,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: RichText(
                        text: TextSpan(
                            text: 'Salve seus amigos da burocracia.    ',
                            style: AppTextStyles.graphik14black400,
                            children: [
                              TextSpan(
                                text: 'Faça um convite para o Nubank',
                                style: AppTextStyles.graphik14purple400,
                              ),
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
