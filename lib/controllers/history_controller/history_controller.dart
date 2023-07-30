import 'package:get/get.dart';

class HistoryPageController extends GetxController {
  int selectedIndex = 0;
  changeIndex(int index) {
    selectedIndex = index;
    update();
  }
}
