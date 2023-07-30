import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:motto_help/constants/app_colors.dart';
import 'package:motto_help/constants/app_spacing.dart';
import 'package:motto_help/constants/app_svgs.dart';
import 'package:motto_help/utils/app_navigation.dart';
import 'package:motto_help/views/main_pages/main_page.dart';
import 'package:motto_help/widgets/app_button.dart';
import '../../controllers/confirm_payment/confirm_payment_controller.dart';
import '../../widgets/app_input_field.dart';
import '../../widgets/app_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/location.png",
                ),
                fit: BoxFit.cover)),
        child: Padding(
          padding: AppSpacing.defaultPaddingAll,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 27,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.string(AppSvgs.backarrow),
                      )),
                  Stack(
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
                  )
                ],
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30)),
                          ),
                          backgroundColor: Colors.white,
                          isScrollControlled: true,
                          context: context,
                          builder: (builder) {
                            return Agent();
                          });
                    },
                    child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.28,
                      decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(6)),
                      child: Center(
                        child: AppText(
                          text: "Agent",
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              AppSpacing.heightSpace30,
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.30,
                  child: AppButton(
                    btnText: "Help Me",
                    ontap: () {
                      showModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30)),
                          ),
                          backgroundColor: Colors.white,
                          isScrollControlled: true,
                          context: context,
                          builder: (builder) {
                            return HelpMe();
                          });
                    },
                  )),
              AppSpacing.heightSpace20,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 40,
                    width: 44,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Center(
                      child: SvgPicture.string(AppSvgs.direction),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HelpMe extends StatelessWidget {
  const HelpMe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.55,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 10),
        child: Column(
          children: [
            AppSpacing.heightSpace30,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffDFDFDF),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.close,
                        color: Color(0xff303030),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const AppFormField(
              headingText: "Note Down Your Problems",
              maxLines: 5,
              hintText: "Type your problems here...",
            ),
            AppSpacing.heightSpace30,
            AppButton(btnText: "Continue", ontap: () {})
          ],
        ),
      ),
    );
  }
}

class Agent extends StatelessWidget {
  const Agent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.62,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 10),
        child: Column(
          children: [
            AppSpacing.heightSpace30,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  text: "Agent Details",
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Center(
                    child: Icon(
                      Icons.close,
                      color: Color(0xff303030),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.88,
              child: const Divider(
                color: Color(0xffF0F0F0),
                thickness: 2,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Image.asset(
                  "assets/images/company.png",
                  height: 70,
                  width: 70,
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      text: "Motto Help",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    AppText(
                      text: "Mesa, New Jersey 45463",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff9B9B9B),
                    )
                  ],
                ),
                const Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      text: "Service Fee",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff666666),
                    ),
                    AppText(
                      text: "\$10/hr",
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff333333),
                    )
                  ],
                ),
              ],
            ),
            AppSpacing.heightSpace10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      text: "Contact Number",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff666666),
                    ),
                    AppSpacing.heightSpace10,
                    AppText(
                      text: "(480) 555-0103",
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff333333),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xffFFDFAE),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: SvgPicture.string(AppSvgs.call),
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xffDDFDD5),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: SvgPicture.string(AppSvgs.share),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            AppSpacing.heightSpace20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText2(
                  text: "Order Status",
                  fontWeight: FontWeight.w700,
                ),
                Container(
                  height: 37,
                  width: MediaQuery.of(context).size.width * 0.30,
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: AppText(
                      text: "3km away",
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            AppSpacing.heightSpace10,
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.88,
              child: const Divider(
                color: Color(0xffF0F0F0),
                thickness: 1,
              ),
            ),
            AppSpacing.heightSpace10,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 18,
                  width: 18,
                  decoration: const BoxDecoration(
                    color: Color(0xff05F205),
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width * 0.23,
                  decoration: const BoxDecoration(
                    color: Color(0xffF0F0F0),
                  ),
                ),
                Container(
                  height: 18,
                  width: 18,
                  decoration: const BoxDecoration(
                    color: Color(0xff05F205),
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width * 0.23,
                  decoration: const BoxDecoration(
                    color: Color(0xffF0F0F0),
                  ),
                ),
                Container(
                  height: 18,
                  width: 18,
                  decoration: const BoxDecoration(
                    color: Color(0xffC2C2C2),
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            AppSpacing.heightSpace10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AppText(
                  text: "Order Confirmed",
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff05F205),
                ),
                AppText(
                  text: "Processing",
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff05F205),
                ),
                AppText(
                  text: "Complete",
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xffC2C2C2),
                ),
              ],
            ),
            AppSpacing.heightSpace10,
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: AppButton(
                  btnText: "Continue",
                  ontap: () {
                    showModalBottomSheet(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30)),
                        ),
                        backgroundColor: Colors.white,
                        isScrollControlled: true,
                        context: context,
                        builder: (builder) {
                          return const CurrentOrder();
                        });
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class CurrentOrder extends StatelessWidget {
  const CurrentOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.72,
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AppSpacing.heightSpace30,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  text: "Current Order",
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Center(
                    child: Icon(
                      Icons.close,
                      color: Color(0xff303030),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.88,
              child: const Divider(
                color: Color(0xffF0F0F0),
                thickness: 2,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  text: "Motto Help",
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff333333),
                ),
                AppText(
                  text: "Service Charge",
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff666666),
                ),
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  text: "Mesa, New Jersey 45463",
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff9B9B9B),
                ),
                AppText(
                  text: "\$10/hr",
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff333333),
                ),
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                AppText(
                  text: "Destination",
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff666666),
                ),
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                AppText(
                  text: "6391 Elgin St. Celina, Delaware 10299",
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff333333),
                ),
              ],
            ),
            AppSpacing.heightSpace10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  text: "Arrive Time",
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff333333),
                ),
                AppButton2(
                  text: "20 min",
                  textColor: Colors.black,
                  width: MediaQuery.of(context).size.width * 0.28,
                  height: 35,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
            AppSpacing.heightSpace10,
            AppFormField(
              headingText: "Use Coupon Code: (if you have)",
              hintText: "Type coupon code here",
              suffixIcon: Padding(
                padding: const EdgeInsets.all(6.0),
                child: AppButton2(
                  text: "Check Offer",
                  textColor: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  width: MediaQuery.of(context).size.width * 0.28,
                  height: 40,
                ),
              ),
            ),
            AppSpacing.heightSpace20,
            AppButton2(
              text: "Continue",
              textColor: Colors.white,
              onTap: () {
                showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                    ),
                    backgroundColor: Colors.white,
                    isScrollControlled: true,
                    context: context,
                    builder: (builder) {
                      return const CompleteService();
                    });
              },
            ),
            AppSpacing.heightSpace20,
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xffE0E0E0),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: AppText(
                    text: "Cancel",
                    color: const Color(0xffA3A3A3),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            AppSpacing.heightSpace10,
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.80,
              child: AppText(
                text:
                    "Note: You can cancel this order, you must be cancel it within 2 minutes",
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: const Color(0xffCC1111),
              ),
            ),
            AppSpacing.heightSpace10,
          ],
        ),
      ),
    );
  }
}

class CompleteService extends StatelessWidget {
  const CompleteService({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.80,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AppSpacing.heightSpace30,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  text: "Complete Your Service",
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Center(
                    child: Icon(
                      Icons.close,
                      color: Color(0xff303030),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.88,
              child: const Divider(
                color: Color(0xffF0F0F0),
                thickness: 2,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                AppText(
                  text: "Total Service fee:",
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff333333),
                ),
              ],
            ),
            AppSpacing.heightSpace10,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText2(
                        text: "Bulb",
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                      AppSpacing.heightSpace10,
                      AppText2(
                        text: "Set belt",
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                      AppSpacing.heightSpace10,
                      AppText2(
                        text: "2 ltr Petrol",
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                      AppSpacing.heightSpace10,
                      AppText2(
                        text: "Service fee",
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                      AppSpacing.heightSpace10,
                      AppText2(
                        text: "Delivery Charge",
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                      AppSpacing.heightSpace10,
                      AppText2(
                        text: "+VAT",
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                      AppSpacing.heightSpace10,
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText2(
                        text: "Rs.550",
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                      AppSpacing.heightSpace10,
                      AppText2(
                        text: "Rs.850",
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                      AppSpacing.heightSpace10,
                      AppText2(
                        text: "Rs.450",
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                      AppSpacing.heightSpace10,
                      AppText2(
                        text: "Rs.500",
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                      AppSpacing.heightSpace10,
                      AppText2(
                        text: "N/A",
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                      AppSpacing.heightSpace10,
                      AppText2(
                        text: "N/A",
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                      AppSpacing.heightSpace10,
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.88,
              child: const Divider(
                color: Color(0xffF0F0F0),
                thickness: 2,
              ),
            ),
            AppSpacing.heightSpace10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  text: "Grand total:",
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff333333),
                ),
                AppText(
                  text: "Rs. 2,050.00",
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff333333),
                ),
              ],
            ),
            AppSpacing.heightSpace10,
            Row(
              children: [
                AppText2(
                  text: "Choose payment getaway:",
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff333333),
                ),
              ],
            ),
            AppSpacing.heightSpace10,
            GetBuilder<ConfirmPaymentPageController>(
                init: ConfirmPaymentPageController(),
                builder: (controller) {
                  return Column(
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
                              borderRadius: 25,
                              height: 125,
                              text: "",
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset(
                                    "assets/images/cash_payment.png",
                                    height: 50,
                                    width: 50,
                                    color: controller.selectedIndex == 0
                                        ? const Color(0xff333333)
                                        : const Color(0xff858585),
                                  ),
                                  AppText2(
                                    text: "Cash Payment",
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
                          const SizedBox(
                            width: 30,
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
                              borderRadius: 25,
                              height: 125,
                              text: "",
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset(
                                    "assets/images/online_payment.png",
                                    height: 50,
                                    width: 50,
                                    color: controller.selectedIndex == 1
                                        ? const Color(0xff333333)
                                        : const Color(0xff858585),
                                  ),
                                  AppText2(
                                    text: "Online Payment",
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
                    ],
                  );
                }),
            AppButton(
                btnText: "Confirm Payment",
                ontap: () {
                  showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)),
                      ),
                      backgroundColor: Colors.white,
                      isScrollControlled: true,
                      context: context,
                      builder: (builder) {
                        return const Offer();
                      });
                }),
          ],
        ),
      ),
    );
  }
}

class Offer extends StatelessWidget {
  const Offer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.85,
      child: Padding(
        padding: AppSpacing.defaultPaddingAll,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  text: "Offers",
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Center(
                    child: Icon(
                      Icons.close,
                      color: Color(0xff303030),
                    ),
                  ),
                )
              ],
            ),
            AppSpacing.heightSpace10,
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.88,
              child: const Divider(
                color: Color(0xffF0F0F0),
                thickness: 2,
              ),
            ),
            AppSpacing.heightSpace10,
            Row(
              children: [
                AppText(
                  text: "Check Your Offer",
                  color: const Color(0xff333333),
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
            AppSpacing.heightSpace10,
            AppInputField(
              hintText: "Type Coupon code here",
              suffixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: AppButton2(
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.32,
                  text: "Check Offer",
                  textColor: Colors.white,
                  fontSize: 12,
                  onTap: () {
                    showModalBottomSheet(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30)),
                        ),
                        backgroundColor: Colors.white,
                        isScrollControlled: true,
                        context: context,
                        builder: (builder) {
                          return const AvailableOffer();
                        });
                  },
                ),
              ),
            ),
            Image.asset("assets/images/offer.png"),
            AppText(
              text: "No offers are available right now!",
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: const Color(0xffCC1111),
            ),
          ],
        ),
      ),
    );
  }
}

class AvailableOffer extends StatelessWidget {
  const AvailableOffer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      AppNavigations.to(context, nextScreen: MainPage());
                    },
                    child: Container(
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xffDFDFDF)),
                        child: const Center(child: Icon(Icons.close))),
                  ),
                ],
              ),
              content: SizedBox(
                height: 220,
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/confirm.png",
                      height: 80,
                      width: 80,
                    ),
                    AppText(
                      text: "Thank You",
                      color: const Color(0xff58D74E),
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                    AppText(
                      text: "for accepting our servcie",
                      color: const Color(0xffAEAEAE),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    AppSpacing.heightSpace10,
                    AppText(
                      text: "Agent will reach you seen",
                      color: const Color(0xff333333),
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                    AppSpacing.heightSpace20,
                    AppText(
                      text: "Go to Home Page",
                      color: AppColors.primaryColor,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      textUnderline: TextDecoration.underline,
                    )
                  ],
                ),
              )),
        );
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.86,
        child: Padding(
          padding: AppSpacing.defaultPaddingAll,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(
                    text: "Offers",
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Center(
                      child: Icon(
                        Icons.close,
                        color: Color(0xff303030),
                      ),
                    ),
                  )
                ],
              ),
              AppSpacing.heightSpace10,
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.88,
                child: const Divider(
                  color: Color(0xffF0F0F0),
                  thickness: 2,
                ),
              ),
              AppSpacing.heightSpace10,
              Row(
                children: [
                  AppText(
                    text: "Check Your Offer",
                    color: const Color(0xff333333),
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
              AppSpacing.heightSpace10,
              AppInputField(
                hintText: "Type Coupon code here",
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AppButton2(
                    height: 40,
                    width: MediaQuery.of(context).size.width * 0.32,
                    text: "Check Offer",
                    textColor: Colors.white,
                    fontSize: 12,
                    onTap: () {},
                  ),
                ),
              ),
              AppSpacing.heightSpace10,
              Row(
                children: [
                  AppText(
                    text: "Available offer:",
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff333333),
                  ),
                ],
              ),
              AppSpacing.heightSpace20,
              Container(
                height: 225,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 2),
                      color: Colors.grey.withOpacity(0.30),
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                        height: 50,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppText(
                                text: "Your Offer",
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xffFFFFFF),
                              ),
                              Container(
                                height: 40,
                                width: MediaQuery.of(context).size.width * 0.20,
                                decoration: BoxDecoration(
                                  color: const Color(0xffE5C537),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(
                                          "assets/images/coin.png",
                                        ),
                                      ),
                                      AppText(
                                        text: "300",
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                    AppSpacing.heightSpace10,
                    Padding(
                      padding: const EdgeInsets.only(left: 12, right: 12),
                      child: Container(
                        height: 90,
                        width: MediaQuery.of(context).size.width * 0.88,
                        decoration: BoxDecoration(
                            color: const Color(0xffFFFCEC),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              "assets/images/photo.png",
                              height: 60,
                              width: 60,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                AppText(
                                  text: "Ipsum dolor sit",
                                  color: const Color(0xff333333),
                                ),
                                AppText(
                                  text:
                                      "Lorem ipsum dolor sit amet consectetur.",
                                  fontSize: 10,
                                  color: const Color(0xff333333),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: double.infinity,
                      child: Divider(
                        color: Color(0xffF0F0F0),
                        thickness: 2,
                      ),
                    ),
                    AppSpacing.heightSpace10,
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/amount.png",
                                height: 20,
                                width: 20,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              AppText(
                                text: "Amount: RS. 300",
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: AppColors.primaryColor,
                              ),
                            ],
                          ),
                          AppText(
                            text: "Apply",
                            color: AppColors.primaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            textUnderline: TextDecoration.underline,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
