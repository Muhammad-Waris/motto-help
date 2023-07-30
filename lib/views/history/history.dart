import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:motto_help/views/history/in_process.dart';
import 'package:motto_help/widgets/app_text.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_spacing.dart';
import '../../constants/app_svgs.dart';
import '../../controllers/history_controller/history_controller.dart';
import '../../widgets/app_button.dart';
import 'complete.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.all(18.0),
          child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: SvgPicture.string(AppSvgs.backarrow)),
        ),
        title: AppText(
          text: "History",
          color: const Color(0xff333333),
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                Image.asset(
                  "assets/images/photo.png",
                  height: 45,
                  width: 45,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 2.5, right: 2.5),
                  height: 8,
                  width: 8,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff00BB00),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: AppSpacing.defaultPaddingAll,
            child: 
            GetBuilder<HistoryPageController>(
                init: HistoryPageController(),
                builder: (controller) {
                  return
                   Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: AppButton2(
                              borderColor: Colors.transparent,
                              textColor: controller.selectedIndex == 0
                                  ? Colors.white
                                  : Colors.white,
                              color: controller.selectedIndex == 0
                                  ? AppColors.primaryColor
                                  : const Color(0xffE0E0E0),
                              onTap: () {
                                controller.changeIndex(0);
                              },
                              borderRadius: 1,
                              height: 55,
                              text: "",
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  AppText(
                                    text: "Pick Up",
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: controller.selectedIndex == 0
                                        ? const Color(0xff333333)
                                        : const Color(0xff858585),
                                  ),
                                  AppText2(
                                    text: "Complete",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: controller.selectedIndex == 0
                                        ? const Color(0xff333333)
                                        : const Color(0xff858585),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: AppButton2(
                              borderColor: Colors.transparent,
                              textColor: controller.selectedIndex == 1
                                  ? const Color(0xffE0E0E0)
                                  : const Color(0xff858585),
                              color: controller.selectedIndex == 1
                                  ? AppColors.primaryColor
                                  : const Color(0xffE0E0E0),
                              onTap: () {
                                controller.changeIndex(1);
                              },
                              borderRadius: 1,
                              height: 55,
                              text: "",
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  AppText(
                                    text: "Drop of",
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: controller.selectedIndex == 1
                                        ? const Color(0xff333333)
                                        : const Color(0xff858585),
                                  ),
                                  AppText2(
                                    text: "In Process",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: controller.selectedIndex == 1
                                        ? const Color(0xff333333)
                                        : const Color(0xff858585),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      AppSpacing.heightSpace20,
                      controller.selectedIndex == 0 ? Complete() : Inprocess(),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
