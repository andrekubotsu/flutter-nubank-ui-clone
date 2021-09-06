import 'package:flutter/material.dart';
import 'package:nubank_ui_clone/shared/constants/app_colors.dart';
import 'package:nubank_ui_clone/shared/constants/app_fonts.dart';
import 'package:nubank_ui_clone/shared/widgets/custom_appbar_widget.dart';
import 'package:nubank_ui_clone/shared/widgets/custom_icon_text_button_widget.dart';
import 'package:nubank_ui_clone/shared/widgets/custom_purple_button_widget.dart';

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
        body: SingleChildScrollView(
          child: Column(
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
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
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
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                width: mediaSize.width,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: AppColors.grey),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.credit_score_outlined),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Cartão de Crédito',
                          style: AppTextStyles.graphik17black600,
                        ),
                        Icon(
                          Icons.chevron_right,
                          color: AppColors.black,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Fatura Atual',
                      style: AppTextStyles.graphik14grey400,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'R\$ 2000,00',
                      style: AppTextStyles.graphik24black600,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Limite disponível de R\$ 5000,00',
                      style: AppTextStyles.graphik13grey400,
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                width: mediaSize.width,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: AppColors.grey),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.monetization_on_outlined),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Empréstimo',
                          style: AppTextStyles.graphik17black600,
                        ),
                        Icon(
                          Icons.chevron_right,
                          color: AppColors.black,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Valor disponível de até',
                      style: AppTextStyles.graphik14grey400,
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      'R\$ 15000,00',
                      style: AppTextStyles.graphik14grey400,
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                width: mediaSize.width,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: AppColors.grey),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.signal_cellular_alt_outlined),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Investimentos',
                          style: AppTextStyles.graphik17black600,
                        ),
                        Icon(
                          Icons.chevron_right,
                          color: AppColors.black,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      width: mediaSize.width,
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                        'A evolução roxa começou. Invista de maneira simples, sem burocracias e 100% digital.',
                        style: AppTextStyles.graphik14grey400,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomPurpleButton(text: 'Conhecer'),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                width: mediaSize.width,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: AppColors.grey),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.favorite_outline),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Seguro de vida',
                          style: AppTextStyles.graphik17black600,
                        ),
                        Icon(
                          Icons.chevron_right,
                          color: AppColors.black,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      width: mediaSize.width,
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                        'Conheça Nubank Vida: um seguro simples e que cabe no bolso',
                        style: AppTextStyles.graphik14grey400,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                width: mediaSize.width,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: AppColors.grey),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Descubra mais',
                      style: AppTextStyles.graphik17black600,
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(25),
                        width: 290,
                        decoration: BoxDecoration(
                            color: AppColors.lightGrey,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Parcele com a gente',
                              style: AppTextStyles.graphik17black600,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'A loja não parcela? Faça a compra e parcele depois, direto aqui no app.',
                              style: AppTextStyles.graphik14grey400,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            CustomPurpleButton(text: 'Parcelar compra')
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        padding: const EdgeInsets.all(25),
                        width: 290,
                        decoration: BoxDecoration(
                            color: AppColors.lightGrey,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Indique seus amigos',
                              style: AppTextStyles.graphik17black600,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Mostre aos seus amigos como é fácil ter uma vida sem burocracia.',
                              style: AppTextStyles.graphik14grey400,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            CustomPurpleButton(text: 'Indicar amigos')
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        padding: const EdgeInsets.all(25),
                        width: 290,
                        decoration: BoxDecoration(
                            color: AppColors.lightGrey,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'WhatsApp ',
                                  style: AppTextStyles.graphik17black600,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                      color: AppColors.purple,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Text(
                                    'Novo',
                                    style: AppTextStyles.graphik12white500,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Pagamentos seguros, rápidos e sem tarifa. A experiência Nubank sem nem sair da conversa.',
                              style: AppTextStyles.graphik14grey400,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CustomPurpleButton(text: 'Quero conhecer')
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
