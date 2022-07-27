import 'package:flutter/material.dart';
import 'package:projeto_nubank/utils/colors_standard.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [_rendimentos(),_rendimentos()],
      ),
    );
  }

  _rendimentos() {
    return Container(
      margin: const EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: RichText(
        text: TextSpan(children: [
          const TextSpan(
            text: "Seu ",
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          TextSpan(
              text: "informe de \nrendimentos ",
              style: TextStyle(color: backgroundColor, fontSize: 16)),
          const TextSpan(
              text: "de 2022 já está... ",
              style: TextStyle(color: Colors.black, fontSize: 16))
        ]),
      ),
    );
  }
}
