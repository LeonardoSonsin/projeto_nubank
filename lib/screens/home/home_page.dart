import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projeto_nubank/screens/account/account.dart';
import 'package:projeto_nubank/screens/home/model/header.dart';
import 'package:projeto_nubank/utils/colors_standard.dart';

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
            children: const [
              Header(),
              AccountNubank(),
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
        ));
  }
}
