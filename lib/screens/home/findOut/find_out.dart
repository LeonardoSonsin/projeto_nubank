import 'package:flutter/material.dart';
import 'package:projeto_nubank/screens/home/findOut/models/card_find_out_more.dart';

class FindOut extends StatelessWidget {
  const FindOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Descubra mais',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 16,
          ),
          findOutCards(),
        ],
      ),
    );
  }

  findOutCards() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        direction: Axis.horizontal,
        spacing: 20,
        children: [
          CardFindOutMore(
              description: 'Sua liberdade financeira \n começa com você...',
              buttonText: 'Conhecer',
              imagem: 'assets/images/nubank.jpg',
              title: 'Parcele compras no app'),
          CardFindOutMore(
              description: 'Sua liberdade financeira \n começa com você...',
              buttonText: 'Conhecer',
              imagem: 'assets/images/nubank.jpg',
              title: 'Portabilidade de salário'),
          CardFindOutMore(
              description: 'Mostre aos seus amigos \n como é fácil ter uma vida...',
              buttonText: 'Indicar',
              imagem: 'assets/images/nubank.jpg',
              title: 'Indique seus amigos'),
        ],
      ),
    );
  }
}
