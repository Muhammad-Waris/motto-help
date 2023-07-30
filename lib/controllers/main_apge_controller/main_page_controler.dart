import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../views/history/history.dart';
import '../../views/home_page/home_page.dart';
import '../../views/profile/profile.dart';

class MainPageController extends GetxController {
  int currentIndex = 0;

  List<Widget> mainScreens = [
    History(),
    HomePage(),
    Profile(),
  ];
  List<String> mainScreensTitle = [
    "History",
    "Home",
    "Profile",
  ];
  changeScreen(int index) {
    currentIndex = index;
    update();
  }
}
