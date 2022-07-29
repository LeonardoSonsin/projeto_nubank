import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projeto_nubank/screens/home/creditCards/credit_card.dart';
import 'package:projeto_nubank/screens/home/investments/investments.dart';
import 'package:projeto_nubank/screens/home/model/header.dart';
import 'package:projeto_nubank/screens/home/security/security_life.dart';
import 'package:projeto_nubank/screens/home/shopping/shopping_view.dart';
import 'package:projeto_nubank/utils/colors_standard.dart';

import 'account/account.dart';
import 'actions/menu_itens.dart';
import 'creditCards/my_credit_cards_page.dart';
import 'findOut/find_out.dart';
import 'notification/notification_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Container(
          color: whiteColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Header(),
              AccountNubank(),
              MenuItens(),
              MyCreditCards(),
              NotificationsPage(),
              Divider(thickness: 1.5,),
              CreditCard(),
              Investments(),
              SecurityLife(),
              ShoppingView(),
              FindOut(),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(0),
      child: AppBar(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
    );
  }
}
