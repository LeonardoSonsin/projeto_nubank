import 'package:get/get.dart';

class ControllerHomePage extends GetxController {
  String value = 'R\$ 873.244,98';
  bool eyesValue = true;

  void showValue() {
    eyesValue = !eyesValue;
    update();
  }
}
