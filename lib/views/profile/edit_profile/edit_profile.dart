import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:motto_help/constants/app_colors.dart';
import 'package:motto_help/constants/app_spacing.dart';
import 'package:motto_help/widgets/app_input_field.dart';

import '../../../constants/app_svgs.dart';
import '../../../controllers/edit_profile_controller/edit_profile_controller.dart';
import '../../../widgets/app_text.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppSpacing.heightSpace30,
            SizedBox(
              height: 55,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: SvgPicture.string(
                          AppSvgs.backarrow,
                          color: Colors.white,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: AppText(
                      text: "Edit Profile",
                      color: const Color(0xffFFFFFF),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 20,
                      top: 5,
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: SvgPicture.string(
                        AppSvgs.editprofile,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GetBuilder<EditProfilePageController>(
                init: EditProfilePageController(),
                builder: (controller) {
                  return Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xffF6F6F6),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(26),
                        topRight: Radius.circular(26),
                      ),
                    ),
                    child: Padding(
                      padding: AppSpacing.defaultPaddingAll,
                      child: Column(
                        children: [
                          AppSpacing.heightSpace20,
                          Image.asset(
                            "assets/images/photo.png",
                            height: 96,
                            width: 96,
                          ),
                          AppSpacing.heightSpace20,
                          const AppFormField2(
                            headingText: "First name",
                            hintText: "Mohammad",
                          ),
                          AppSpacing.heightSpace20,
                          const AppFormField2(
                            headingText: "Last name",
                            hintText: "Shakir",
                          ),
                          AppSpacing.heightSpace20,
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.42,
                                child: AppFormField2(
                                  controller: controller.dateofBirthController,
                                  readOnly: true,
                                  onTap: () {
                                    controller.dateofBirth(context);
                                  },
                                  headingText: "Date of Birth",
                                  hintText: "28/05/1996",
                                  suffixIcon: const Icon(
                                    Icons.calendar_month_outlined,
                                    color: AppColors.disabledColor,
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  AppText(
                                    text: "I am",
                                    color: const Color(0xffBABABA),
                                  ),
                                  AppSpacing.heightSpace10,
                                  Row(
                                    children: [
                                      Radio(
                                          fillColor:
                                              MaterialStateColor.resolveWith(
                                                  (states) =>
                                                      const Color(0xff14163F)),
                                          value: 0,
                                          groupValue: controller.selectedIndex,
                                          onChanged: (value) {
                                            controller.changeIndex(0);
                                          }),
                                      AppText2(
                                        text: "Male",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      Radio(
                                          fillColor:
                                              MaterialStateColor.resolveWith(
                                                  (states) =>
                                                      const Color(0xff14163F)),
                                          value: 1,
                                          groupValue: controller.selectedIndex,
                                          onChanged: (value) {
                                            controller.changeIndex(1);
                                          }),
                                      AppText2(
                                        text: "Female",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          AppSpacing.heightSpace20,
                          const AppFormField2(
                            headingText: "Email",
                            hintText: "abc@gmail.com",
                          ),
                          AppSpacing.heightSpace20,
                          const AppFormField2(
                            headingText: "Phone",
                            hintText: "+880  | 3265875465",
                          ),
                          AppSpacing.heightSpace20,
                          Container(
                            height: 60,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: const Color(0xffECECEE),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                                child: AppText2(
                              text: "Save Changes",
                              color: const Color(0xff110F24),
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            )),
                          ),
                          AppSpacing.heightSpace20,
                          Container(
                            height: 60,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(0, 2),
                                  color:
                                      const Color(0xff0057FF).withOpacity(0.10),
                                  blurRadius: 8,
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AppText(
                                  text: "View More Informations",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xff14163F),
                                ),
                                const Icon(
                                  Icons.keyboard_arrow_down_sharp,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                          AppSpacing.heightSpace30,
                        ],
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
