import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import 'app_text.dart';

class AppBottomSheet extends StatelessWidget {
  int currentIndex;
  void Function(int index)? onIndexChanged;
  AppBottomSheet({
    Key? key,
    this.currentIndex = 1,
    this.onIndexChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onIndexChanged,
      showSelectedLabels: false,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          icon: SizedBox(
            height: 47,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.history,
                  color: currentIndex == 0
                      ? AppColors.primaryColor
                      : AppColors.headTextColor,
                  size: 28,
                ),
                AppText(
                  text: "History",
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: currentIndex == 0
                      ? AppColors.primaryColor
                      : AppColors.headTextColor,
                ),
              ],
            ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SizedBox(
            height: 47,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.home,
                  color: currentIndex == 1
                      ? AppColors.primaryColor
                      : AppColors.headTextColor,
                  size: 28,
                ),
                AppText(
                  text: "Home",
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: currentIndex == 1
                      ? AppColors.primaryColor
                      : AppColors.headTextColor,
                ),
              ],
            ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SizedBox(
            height: 47,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.person,
                  color: currentIndex == 2
                      ? AppColors.primaryColor
                      : AppColors.headTextColor,
                  size: 28,
                ),
                AppText(
                  text: "Profile",
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: currentIndex == 2
                      ? AppColors.primaryColor
                      : AppColors.headTextColor,
                ),
              ],
            ),
          ),
          label: '',
        ),
      ],
    );
  }
}
