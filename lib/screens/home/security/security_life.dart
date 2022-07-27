import 'package:flutter/material.dart';

class SecurityLife extends StatelessWidget {
  const SecurityLife({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Seguros',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            'Proteção para você cuidar do que importa',
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }
}
