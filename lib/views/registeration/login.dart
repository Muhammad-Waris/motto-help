import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:motto_help/constants/app_colors.dart';
import 'package:motto_help/constants/app_spacing.dart';
import 'package:motto_help/constants/app_svgs.dart';
import 'package:motto_help/views/main_pages/main_page.dart';
import 'package:motto_help/widgets/app_button.dart';
import 'package:motto_help/widgets/app_input_field.dart';
import 'package:motto_help/widgets/app_text.dart';

import '../../utils/app_navigation.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        elevation: 0.2,
        leading: Padding(
          padding: const EdgeInsets.all(14.0),
          child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: SvgPicture.string(AppSvgs.backarrow)),
        ),
        title: AppText(
          text: "Login",
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: AppSpacing.defaultPaddingAll,
              child: Image.asset("assets/images/login.png"),
            ),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, -3),
                        color: Color.fromARGB(255, 243, 238, 238),
                        spreadRadius: 0,
                        blurRadius: 20),
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )),
              child: Padding(
                padding: AppSpacing.defaultPaddingAll,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      text: "Login",
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                    AppSpacing.heightSpace10,
                    AppText2(
                      text:
                          "Enter the required information to login & get full access",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                    AppSpacing.heightSpace40,
                    AppInputField(
                      hintText: "Phone number",
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SvgPicture.string(AppSvgs.call),
                      ),
                    ),
                    AppInputField(
                      hintText: "Type here your OTP",
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Image.asset(
                          "assets/images/key.png",
                          height: 20,
                          width: 20,
                        ),
                      ),
                      suffixIcon: Container(
                        margin: const EdgeInsets.all(8),
                        height: 35,
                        width: MediaQuery.of(context).size.width * 0.24,
                        decoration: BoxDecoration(
                            color: const Color(0xff1F5AD1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: AppText(
                          text: "Send OTP",
                          color: Colors.white,
                        )),
                      ),
                    ),
                    AppSpacing.heightSpace20,
                    AppButton(
                        btnText: "Continue",
                        ontap: () {
                          AppNavigations.to(context, nextScreen: MainPage());
                        })
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
