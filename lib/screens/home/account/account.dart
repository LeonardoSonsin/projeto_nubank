import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../controllers/controller_home_page.dart';

class AccountNubank extends StatefulWidget {
  const AccountNubank({Key? key}) : super(key: key);

  @override
  State<AccountNubank> createState() => _AccountNubankState();
}

class _AccountNubankState extends State<AccountNubank> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _accountChevron(),
          const SizedBox(
            height: 12,
          ),
          _moneyBalance(),
        ],
      ),
    );
  }

  _accountChevron() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Conta',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Icon(MdiIcons.chevronRight),
      ],
    );
  }

  _moneyBalance() {
    return GetBuilder<ControllerHomePage>(
        init: ControllerHomePage(),
        builder: (controllerAccount) {
          return Text(
            controllerAccount.eyesValue
                ? controllerAccount.value
                : "___________________",
            style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          );
        });
  }
}
