import 'package:get/get.dart';

class ControllerHomePage extends GetxController {
  String value = 'R\$ 0.50';
  bool eyesValue = true;
  String creditCardValue = 'R\$ 48.605,00';

  void showValue() {
    eyesValue = !eyesValue;
    update();
  }
}
