import 'package:get/get.dart';

class ConfirmPaymentPageController extends GetxController {
  int selectedIndex = 0;
  changeIndex(int index) {
    selectedIndex = index;
    update();
  }
}
