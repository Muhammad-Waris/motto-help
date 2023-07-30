import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:motto_help/constants/app_spacing.dart';
import 'package:motto_help/utils/app_navigation.dart';
import '../../constants/app_svgs.dart';
import '../../widgets/app_text.dart';
import 'edit_profile/edit_profile.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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
          text: "Profile",
          color: const Color(0xff333333),
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 13,
              top: 5,
            ),
            child: InkWell(
              onTap: () {},
              child: const Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacing.defaultPaddingAll,
          child: Column(
            children: [
              Container(
                height: 170,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: const Color(0xffFFF8D8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/photo.png",
                      height: 75,
                      width: 75,
                    ),
                    AppText(
                      text: "Muhammad Shakir",
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff333333),
                    ),
                    AppText(
                      text: "Cell: 919997983085",
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff333333).withOpacity(0.8),
                    ),
                  ],
                ),
              ),
              AppSpacing.heightSpace20,
              ProfileWidget(
                img: "assets/images/edit_profile.png",
                text: "Edit Profile",
                ontap: () {
                  AppNavigations.to(context, nextScreen:const EditProfile());
                },
              ),
              AppSpacing.heightSpace10,
              ProfileWidget(
                img: "assets/images/contact_us.png",
                text: "Contact Us",
                ontap: () {},
              ),
              AppSpacing.heightSpace10,
              ProfileWidget(
                img: "assets/images/history.png",
                text: "History",
                ontap: () {},
              ),
              AppSpacing.heightSpace10,
              ProfileWidget(
                img: "assets/images/earnings.png",
                text: "Earnings",
                ontap: () {},
              ),
              AppSpacing.heightSpace10,
              ProfileWidget(
                img: "assets/images/privacy.png",
                text: "Prvacy Policy",
                ontap: () {},
              ),
              AppSpacing.heightSpace10,
              ProfileWidget(
                img: "assets/images/terms.png",
                text: "Terms & Conditions",
                ontap: () {},
              ),
              AppSpacing.heightSpace10,
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileWidget extends StatelessWidget {
  void Function()? ontap;
  String img, text;

  ProfileWidget({
    super.key,
    this.ontap,
    required this.img,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: InkWell(
            onTap: ontap,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffF0F0F0),
                      ),
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Image.asset(img),
                      )),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    AppText(
                      text: text,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Color(0xff333333),
                )
              ],
            ),
          ),
        ),
        AppSpacing.heightSpace10,
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.75,
          child: const Divider(
            color: Color(0xffE0E0E0),
            thickness: 1.7,
            height: 2,
          ),
        ),
      ],
    );
  }
}
