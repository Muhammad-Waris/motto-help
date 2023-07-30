import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/app_colors.dart';
import '../../controllers/main_apge_controller/main_page_controler.dart';
import '../../widgets/app_bottom_sheet.dart';


class MainPage extends StatelessWidget {
  int currentIndex;
  MainPage({
    Key? key,
    this.currentIndex = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MainPageController mainPageController = Get.put(MainPageController());
    mainPageController.currentIndex = currentIndex;
    return ColoredBox(
      color: AppColors.backgroundColor,
      child: SafeArea(
        child: GetBuilder<MainPageController>(
          init: MainPageController(),
          builder: (_) {
            return Scaffold(
              body: _.mainScreens[_.currentIndex],
              bottomNavigationBar: AppBottomSheet(
                currentIndex: _.currentIndex,
                onIndexChanged: (index) {
                  _.changeScreen(index);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
