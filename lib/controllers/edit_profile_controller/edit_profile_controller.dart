import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class EditProfilePageController extends GetxController {
  TextEditingController dateofBirthController = TextEditingController();
  TextEditingController expiryDate = TextEditingController();

   int selectedIndex = 0;
  changeIndex(int index) {
    selectedIndex = index;
    update();
  }

 

  dateofBirth(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1995),
      lastDate: DateTime(2025),
    ).then(
      (value) => dateofBirthController.text = DateFormat("dd/MM/yyyy").format(value!),
    );
  }
}
